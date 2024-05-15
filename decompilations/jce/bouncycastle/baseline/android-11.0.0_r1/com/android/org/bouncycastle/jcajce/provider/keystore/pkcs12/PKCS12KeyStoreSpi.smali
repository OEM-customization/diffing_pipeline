.class public Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "PKCS12KeyStoreSpi.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$BCPKCS12KeyStore;,
        Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    }
.end annotation


# static fields
.field static final blacklist CERTIFICATE:I = 0x1

.field static final blacklist KEY:I = 0x2

.field static final blacklist KEY_PRIVATE:I = 0x0

.field static final blacklist KEY_PUBLIC:I = 0x1

.field static final blacklist KEY_SECRET:I = 0x2

.field private static final blacklist MIN_ITERATIONS:I = 0xc800

.field static final blacklist NULL:I = 0x0

.field static final blacklist PKCS12_MAX_IT_COUNT_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs12.max_it_count"

.field private static final blacklist SALT_SIZE:I = 0x14

.field static final blacklist SEALED:I = 0x4

.field static final blacklist SECRET:I = 0x3

.field private static final blacklist keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;


# instance fields
.field private blacklist certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist certFact:Ljava/security/cert/CertificateFactory;

.field private blacklist certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist chainCerts:Ljava/util/Hashtable;

.field private final blacklist helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist itCount:I

.field private blacklist keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist keyCerts:Ljava/util/Hashtable;

.field private blacklist keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

.field private blacklist localIds:Ljava/util/Hashtable;

.field private blacklist macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected blacklist random:Ljava/security/SecureRandom;

.field private blacklist saltLength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 8
    .param p1, "helper"    # Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "keyAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 211
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 127
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 135
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 138
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 156
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 163
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 164
    const v0, 0x19000

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 165
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 212
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 213
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 217
    :try_start_4c
    const-string v0, "X.509"

    invoke-interface {p1, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_56

    .line 222
    nop

    .line 223
    return-void

    .line 219
    :catch_56
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic blacklist access$100(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .param p0, "x0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .param p1, "x1"    # Ljava/security/PublicKey;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .registers 10
    .param p1, "oid"    # Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "salt"    # [B
    .param p3, "itCount"    # I
    .param p4, "password"    # [C
    .param p5, "wrongPkcs12Zero"    # Z
    .param p6, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1742
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1744
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1745
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v2, p4, p5}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1746
    invoke-virtual {v1, p6}, Ljavax/crypto/Mac;->update([B)V

    .line 1748
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    return-object v2
.end method

.method private blacklist createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;
    .registers 15
    .param p1, "mode"    # I
    .param p2, "password"    # [C
    .param p3, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 742
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v0

    .line 743
    .local v0, "alg":Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v1

    .line 744
    .local v1, "func":Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 746
    .local v2, "encScheme":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 749
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 751
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v6

    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v7

    invoke-direct {v4, p2, v5, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .local v4, "key":Ljavax/crypto/SecretKey;
    goto :goto_71

    .line 755
    .end local v4    # "key":Ljavax/crypto/SecretKey;
    :cond_50
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v8

    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keySizeProvider:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;

    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$DefaultSecretKeyProvider;->getKeySize(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/jcajce/spec/PBKDF2KeySpec;-><init>([C[BIILcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 758
    .restart local v4    # "key":Ljavax/crypto/SecretKey;
    :goto_71
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 760
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 761
    .local v6, "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v7, v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v7, :cond_9d

    .line 763
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, p1, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 776
    :cond_9d
    return-object v5
.end method

.method private blacklist createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 5
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .line 230
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 232
    .local v0, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 234
    .end local v0    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_12
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "error creating key"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist doStore(Ljava/io/OutputStream;[CZ)V
    .registers 35
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1315
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    if-eqz v10, :cond_5fa

    .line 1323
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v11, v0

    .line 1325
    .local v11, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v12

    .line 1327
    .local v12, "ks":Ljava/util/Enumeration;
    :goto_14
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const v1, 0xc800

    const/16 v2, 0x14

    if-eqz v0, :cond_147

    .line 1329
    new-array v0, v2, [B

    .line 1331
    .local v0, "kSalt":[B
    iget-object v2, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1333
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1334
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 1335
    .local v3, "privKey":Ljava/security/PrivateKey;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v4, v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object v1, v4

    .line 1336
    .local v1, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    iget-object v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v3, v1, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v4

    .line 1337
    .local v4, "kBytes":[B
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1338
    .local v5, "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v6, v5, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1339
    .local v6, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/4 v7, 0x0

    .line 1340
    .local v7, "attrSet":Z
    new-instance v13, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1342
    .local v13, "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v14, v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v14, :cond_e2

    .line 1344
    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1348
    .local v14, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v15, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1349
    .local v15, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v15, :cond_7b

    move-object/from16 v16, v0

    .end local v0    # "kSalt":[B
    .local v16, "kSalt":[B
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_7d

    :cond_78
    move-object/from16 v17, v1

    goto :goto_89

    .end local v16    # "kSalt":[B
    .restart local v0    # "kSalt":[B
    :cond_7b
    move-object/from16 v16, v0

    .line 1351
    .end local v0    # "kSalt":[B
    .restart local v16    # "kSalt":[B
    :goto_7d
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v1

    .end local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .local v17, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v0, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1357
    :goto_89
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v14, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_a5

    .line 1359
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1361
    .local v0, "ct":Ljava/security/cert/Certificate;
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v3

    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .local v18, "privKey":Ljava/security/PrivateKey;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-interface {v14, v1, v3}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_a7

    .line 1357
    .end local v0    # "ct":Ljava/security/cert/Certificate;
    .end local v18    # "privKey":Ljava/security/PrivateKey;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_a5
    move-object/from16 v18, v3

    .line 1364
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .restart local v18    # "privKey":Ljava/security/PrivateKey;
    :goto_a7
    invoke-interface {v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1366
    .local v0, "e":Ljava/util/Enumeration;
    :goto_ab
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 1368
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1369
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1371
    .local v3, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1372
    move-object/from16 v19, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v19, "e":Ljava/util/Enumeration;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v20, v4

    .end local v4    # "kBytes":[B
    .local v20, "kBytes":[B
    invoke-interface {v14, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1374
    const/4 v7, 0x1

    .line 1376
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1377
    .end local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v19

    move-object/from16 v4, v20

    goto :goto_ab

    .line 1366
    .end local v19    # "e":Ljava/util/Enumeration;
    .end local v20    # "kBytes":[B
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v4    # "kBytes":[B
    :cond_dd
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v4    # "kBytes":[B
    .restart local v19    # "e":Ljava/util/Enumeration;
    .restart local v20    # "kBytes":[B
    goto :goto_ea

    .line 1342
    .end local v14    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v15    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v16    # "kSalt":[B
    .end local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v18    # "privKey":Ljava/security/PrivateKey;
    .end local v19    # "e":Ljava/util/Enumeration;
    .end local v20    # "kBytes":[B
    .local v0, "kSalt":[B
    .local v1, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .local v3, "privKey":Ljava/security/PrivateKey;
    .restart local v4    # "kBytes":[B
    :cond_e2
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    .line 1380
    .end local v0    # "kSalt":[B
    .end local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .end local v4    # "kBytes":[B
    .restart local v16    # "kSalt":[B
    .restart local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v18    # "privKey":Ljava/security/PrivateKey;
    .restart local v20    # "kBytes":[B
    :goto_ea
    if-nez v7, :cond_132

    .line 1385
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1386
    .local v0, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1388
    .local v1, "ct":Ljava/security/cert/Certificate;
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1389
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1391
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1393
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v3

    .line 1395
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1396
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1398
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1401
    .end local v0    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "ct":Ljava/security/cert/Certificate;
    :cond_132
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1402
    .local v0, "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v11, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1403
    .end local v0    # "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v7    # "attrSet":Z
    .end local v13    # "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "kSalt":[B
    .end local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v18    # "privKey":Ljava/security/PrivateKey;
    .end local v20    # "kBytes":[B
    goto/16 :goto_14

    .line 1405
    :cond_147
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v3, "DER"

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v13

    .line 1406
    .local v13, "keySEncoded":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v14, v0

    .line 1411
    .local v14, "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    new-array v15, v2, [B

    .line 1413
    .local v15, "cSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1415
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v7, v0

    .line 1416
    .local v7, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v0, v15, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object/from16 v16, v0

    .line 1417
    .local v16, "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v6, v0

    .line 1418
    .local v6, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object v5, v0

    .line 1420
    .local v5, "doneCerts":Ljava/util/Hashtable;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1421
    .local v1, "cs":Ljava/util/Enumeration;
    :goto_184
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v2, "Error encoding certificate: "

    if-eqz v0, :cond_2ef

    .line 1425
    :try_start_18c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1426
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_196
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18c .. :try_end_196} :catch_2cb

    .line 1427
    .local v4, "cert":Ljava/security/cert/Certificate;
    const/16 v17, 0x0

    .line 1428
    .local v17, "cAttrSet":Z
    move-object/from16 v18, v1

    .end local v1    # "cs":Ljava/util/Enumeration;
    .local v18, "cs":Ljava/util/Enumeration;
    :try_start_19a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_19e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_19a .. :try_end_19e} :catch_2c1

    move-object/from16 v19, v11

    .end local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1a0
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :try_end_1a2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1a0 .. :try_end_1a2} :catch_2b9

    .line 1430
    move-object/from16 v20, v12

    .end local v12    # "ks":Ljava/util/Enumeration;
    .local v20, "ks":Ljava/util/Enumeration;
    :try_start_1a4
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v10, v11}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1431
    .local v1, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1433
    .local v10, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v11, v4, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v11, :cond_243

    .line 1435
    move-object v11, v4

    check-cast v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1439
    .local v11, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v11, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :try_end_1c2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1a4 .. :try_end_1c2} :catch_2b3

    .line 1440
    .local v12, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v12, :cond_1d9

    move-object/from16 v21, v13

    .end local v13    # "keySEncoded":[B
    .local v21, "keySEncoded":[B
    :try_start_1c6
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1ce
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1c6 .. :try_end_1ce} :catch_1d4

    if-nez v13, :cond_1d1

    goto :goto_1db

    :cond_1d1
    move-object/from16 v22, v12

    goto :goto_1e7

    .line 1490
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v10    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v12    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v17    # "cAttrSet":Z
    :catch_1d4
    move-exception v0

    move-object/from16 v24, v15

    goto/16 :goto_2d6

    .line 1440
    .end local v21    # "keySEncoded":[B
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    .restart local v10    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v12    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .restart local v13    # "keySEncoded":[B
    .restart local v17    # "cAttrSet":Z
    :cond_1d9
    move-object/from16 v21, v13

    .line 1442
    .end local v13    # "keySEncoded":[B
    .restart local v21    # "keySEncoded":[B
    :goto_1db
    :try_start_1db
    sget-object v13, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v22, v12

    .end local v12    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .local v22, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v12, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v13, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1448
    :goto_1e7
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v11, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12
    :try_end_1ed
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1db .. :try_end_1ed} :catch_23e

    if-nez v12, :cond_1fc

    .line 1450
    :try_start_1ef
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1fc
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1ef .. :try_end_1fc} :catch_1d4

    .line 1453
    :cond_1fc
    :try_start_1fc
    invoke-interface {v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v12

    .line 1455
    .local v12, "e":Ljava/util/Enumeration;
    :goto_200
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_239

    .line 1457
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1458
    .local v13, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v23, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v24, v23

    .line 1460
    .local v24, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v23, v12

    move-object/from16 v12, v24

    .end local v24    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v12, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v23, "e":Ljava/util/Enumeration;
    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_21a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1fc .. :try_end_21a} :catch_23e

    .line 1461
    move-object/from16 v24, v15

    .end local v15    # "cSalt":[B
    .local v24, "cSalt":[B
    :try_start_21c
    new-instance v15, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {v11, v13}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-direct {v15, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1462
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v12}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1464
    const/16 v17, 0x1

    .line 1465
    .end local v12    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v13    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v9, p1

    move-object/from16 v12, v23

    move-object/from16 v15, v24

    goto :goto_200

    .line 1455
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v24    # "cSalt":[B
    .local v12, "e":Ljava/util/Enumeration;
    .restart local v15    # "cSalt":[B
    :cond_239
    move-object/from16 v23, v12

    move-object/from16 v24, v15

    .end local v12    # "e":Ljava/util/Enumeration;
    .end local v15    # "cSalt":[B
    .restart local v23    # "e":Ljava/util/Enumeration;
    .restart local v24    # "cSalt":[B
    goto :goto_247

    .line 1490
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v10    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v17    # "cAttrSet":Z
    .end local v22    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v24    # "cSalt":[B
    .restart local v15    # "cSalt":[B
    :catch_23e
    move-exception v0

    move-object/from16 v24, v15

    .end local v15    # "cSalt":[B
    .restart local v24    # "cSalt":[B
    goto/16 :goto_2d6

    .line 1433
    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    .restart local v10    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v13, "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    .restart local v17    # "cAttrSet":Z
    :cond_243
    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .line 1468
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    :goto_247
    if-nez v17, :cond_28b

    .line 1470
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1472
    .local v9, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1473
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1474
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1476
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v9, v11

    .line 1478
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1479
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v12, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1481
    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1484
    .end local v9    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_28b
    new-instance v9, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v12

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v9, v11, v12, v13}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1486
    .local v9, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1488
    invoke-virtual {v5, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_21c .. :try_end_2a1} :catch_2b1

    .line 1493
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v1, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v15, v24

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v10    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v17    # "cAttrSet":Z
    goto/16 :goto_184

    .line 1490
    :catch_2b1
    move-exception v0

    goto :goto_2d6

    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2b3
    move-exception v0

    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_2d6

    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .local v12, "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2b9
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .end local v12    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_2d6

    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .local v11, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v12    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2c1
    move-exception v0

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .end local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_2d6

    .end local v18    # "cs":Ljava/util/Enumeration;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .local v1, "cs":Ljava/util/Enumeration;
    .restart local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v12    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2cb
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .line 1492
    .end local v1    # "cs":Ljava/util/Enumeration;
    .end local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v18    # "cs":Ljava/util/Enumeration;
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    :goto_2d6
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1496
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v18    # "cs":Ljava/util/Enumeration;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v1    # "cs":Ljava/util/Enumeration;
    .restart local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v12    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :cond_2ef
    move-object/from16 v18, v1

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v24, v15

    .end local v1    # "cs":Ljava/util/Enumeration;
    .end local v11    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v18    # "cs":Ljava/util/Enumeration;
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v21    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1497
    .end local v18    # "cs":Ljava/util/Enumeration;
    .restart local v1    # "cs":Ljava/util/Enumeration;
    :goto_2ff
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_407

    .line 1501
    :try_start_305
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1502
    .local v0, "certId":Ljava/lang/String;
    iget-object v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 1503
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    const/4 v9, 0x0

    .line 1505
    .local v9, "cAttrSet":Z
    iget-object v10, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_31d

    .line 1507
    goto :goto_2ff

    .line 1510
    :cond_31d
    new-instance v10, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1512
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v10, v11, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1513
    .local v10, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1515
    .local v11, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v12, v4, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v12, :cond_3ac

    .line 1517
    move-object v12, v4

    check-cast v12, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1521
    .local v12, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v13, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v12, v13}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :try_end_341
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_305 .. :try_end_341} :catch_3eb

    .line 1522
    .local v13, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v13, :cond_356

    :try_start_343
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_34b
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_343 .. :try_end_34b} :catch_351

    if-nez v15, :cond_34e

    goto :goto_356

    :cond_34e
    move-object/from16 v17, v1

    goto :goto_362

    .line 1568
    .end local v0    # "certId":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "cAttrSet":Z
    .end local v10    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v11    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v13    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :catch_351
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_3ee

    .line 1524
    .restart local v0    # "certId":Ljava/lang/String;
    .restart local v4    # "cert":Ljava/security/cert/Certificate;
    .restart local v9    # "cAttrSet":Z
    .restart local v10    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v11    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v12    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v13    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :cond_356
    :goto_356
    :try_start_356
    sget-object v15, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_358
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_356 .. :try_end_358} :catch_3eb

    move-object/from16 v17, v1

    .end local v1    # "cs":Ljava/util/Enumeration;
    .local v17, "cs":Ljava/util/Enumeration;
    :try_start_35a
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1527
    :goto_362
    invoke-interface {v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1529
    .local v1, "e":Ljava/util/Enumeration;
    :goto_366
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_3a5

    .line 1531
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1537
    .local v15, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v18, v1

    .end local v1    # "e":Ljava/util/Enumeration;
    .local v18, "e":Ljava/util/Enumeration;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37f

    .line 1539
    move-object/from16 v1, v18

    goto :goto_366

    .line 1542
    :cond_37f
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1544
    .local v1, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1545
    move/from16 v22, v9

    .end local v9    # "cAttrSet":Z
    .local v22, "cAttrSet":Z
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v23, v13

    .end local v13    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .local v23, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    invoke-interface {v12, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1546
    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1548
    const/4 v9, 0x1

    .line 1549
    .end local v1    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v22    # "cAttrSet":Z
    .restart local v9    # "cAttrSet":Z
    move-object/from16 v1, v18

    move-object/from16 v13, v23

    goto :goto_366

    .line 1529
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v23    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .local v1, "e":Ljava/util/Enumeration;
    .restart local v13    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :cond_3a5
    move-object/from16 v18, v1

    move/from16 v22, v9

    move-object/from16 v23, v13

    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v9    # "cAttrSet":Z
    .end local v13    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .restart local v18    # "e":Ljava/util/Enumeration;
    .restart local v22    # "cAttrSet":Z
    .restart local v23    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    goto :goto_3ae

    .line 1515
    .end local v12    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v17    # "cs":Ljava/util/Enumeration;
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v22    # "cAttrSet":Z
    .end local v23    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .local v1, "cs":Ljava/util/Enumeration;
    .restart local v9    # "cAttrSet":Z
    :cond_3ac
    move-object/from16 v17, v1

    .line 1552
    .end local v1    # "cs":Ljava/util/Enumeration;
    .restart local v17    # "cs":Ljava/util/Enumeration;
    :goto_3ae
    if-nez v9, :cond_3cf

    .line 1554
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1556
    .local v1, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1557
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v13, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1559
    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1562
    .end local v1    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3cf
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v12, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    new-instance v15, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v15, v11}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v12, v13, v15}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1564
    .local v1, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1566
    invoke-virtual {v5, v4, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_35a .. :try_end_3e5} :catch_3e9

    .line 1571
    move-object/from16 v1, v17

    .end local v0    # "certId":Ljava/lang/String;
    .end local v1    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    .end local v9    # "cAttrSet":Z
    .end local v10    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v11    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    goto/16 :goto_2ff

    .line 1568
    :catch_3e9
    move-exception v0

    goto :goto_3ee

    .end local v17    # "cs":Ljava/util/Enumeration;
    .local v1, "cs":Ljava/util/Enumeration;
    :catch_3eb
    move-exception v0

    move-object/from16 v17, v1

    .line 1570
    .end local v1    # "cs":Ljava/util/Enumeration;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v17    # "cs":Ljava/util/Enumeration;
    :goto_3ee
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1574
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v17    # "cs":Ljava/util/Enumeration;
    .restart local v1    # "cs":Ljava/util/Enumeration;
    :cond_407
    move-object/from16 v17, v1

    .end local v1    # "cs":Ljava/util/Enumeration;
    .restart local v17    # "cs":Ljava/util/Enumeration;
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v9

    .line 1576
    .local v9, "usedSet":Ljava/util/Set;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 1577
    .end local v17    # "cs":Ljava/util/Enumeration;
    .local v10, "cs":Ljava/util/Enumeration;
    :goto_413
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4d7

    .line 1581
    :try_start_419
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1582
    .local v0, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 1584
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42e

    .line 1586
    goto :goto_413

    .line 1589
    :cond_42e
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_435

    .line 1591
    goto :goto_413

    .line 1594
    :cond_435
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1596
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v11, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1597
    .local v4, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v11, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1599
    .restart local v11    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v12, v1, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v12, :cond_49c

    .line 1601
    move-object v12, v1

    check-cast v12, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1602
    .restart local v12    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v13

    .line 1604
    .local v13, "e":Ljava/util/Enumeration;
    :goto_455
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_495

    .line 1606
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1612
    .restart local v15    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v17, v0

    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .local v17, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46e

    .line 1614
    move-object/from16 v0, v17

    goto :goto_455

    .line 1617
    :cond_46e
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1619
    .local v0, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1620
    move-object/from16 v18, v1

    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .local v18, "cert":Ljava/security/cert/Certificate;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;
    :try_end_47a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_419 .. :try_end_47a} :catch_4bb

    move-object/from16 v22, v5

    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .local v22, "doneCerts":Ljava/util/Hashtable;
    :try_start_47c
    invoke-interface {v12, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1621
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1622
    .end local v0    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v22

    goto :goto_455

    .line 1604
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v22    # "doneCerts":Ljava/util/Hashtable;
    .local v0, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_495
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v22, v5

    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v22    # "doneCerts":Ljava/util/Hashtable;
    goto :goto_4a2

    .line 1599
    .end local v12    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v22    # "doneCerts":Ljava/util/Hashtable;
    .restart local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_49c
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v22, v5

    .line 1625
    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v22    # "doneCerts":Ljava/util/Hashtable;
    :goto_4a2
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v12, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v12, v11}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v5, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1627
    .local v0, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_4b5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_47c .. :try_end_4b5} :catch_4b9

    .line 1632
    .end local v0    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v4    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v11    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v5, v22

    goto/16 :goto_413

    .line 1629
    :catch_4b9
    move-exception v0

    goto :goto_4be

    .end local v22    # "doneCerts":Ljava/util/Hashtable;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :catch_4bb
    move-exception v0

    move-object/from16 v22, v5

    .line 1631
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v22    # "doneCerts":Ljava/util/Hashtable;
    :goto_4be
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1635
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v22    # "doneCerts":Ljava/util/Hashtable;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_4d7
    move-object/from16 v22, v5

    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v22    # "doneCerts":Ljava/util/Hashtable;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v11

    .line 1636
    .local v11, "certSeqEncoded":[B
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v12, v22

    .end local v22    # "doneCerts":Ljava/util/Hashtable;
    .local v12, "doneCerts":Ljava/util/Hashtable;
    move-object v13, v6

    .end local v6    # "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v13, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v15

    .line 1637
    .local v15, "certBytes":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v15}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v13, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v17, v0

    .line 1639
    .local v17, "cInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v14}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1642
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    move-object v6, v0

    .line 1645
    .local v6, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    move-object v5, v0

    .line 1647
    .local v5, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v0

    .line 1649
    .local v4, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_530

    .line 1651
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .local v0, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto :goto_536

    .line 1655
    .end local v0    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :cond_530
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .line 1658
    .local v3, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_536
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1660
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1662
    .local v2, "pkg":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v3

    .end local v3    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .local v18, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    new-instance v3, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v3, v2}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v3, v0

    .line 1667
    .local v3, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    iget v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v1, v0, [B

    .line 1669
    .local v1, "mSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1671
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v22

    .line 1677
    .local v22, "data":[B
    :try_start_55f
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0
    :try_end_565
    .catch Ljava/lang/Exception; {:try_start_55f .. :try_end_565} :catch_5d0

    move-object/from16 v23, v4

    .end local v4    # "bOut":Ljava/io/ByteArrayOutputStream;
    .local v23, "bOut":Ljava/io/ByteArrayOutputStream;
    :try_start_567
    iget v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_569
    .catch Ljava/lang/Exception; {:try_start_567 .. :try_end_569} :catch_5c2

    const/16 v25, 0x0

    move-object/from16 v26, v1

    .end local v1    # "mSalt":[B
    .local v26, "mSalt":[B
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "pkg":[B
    .local v27, "pkg":[B
    move-object v2, v0

    move-object/from16 v28, v3

    .end local v3    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v28, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    move-object/from16 v3, v26

    move-object/from16 v29, v5

    .end local v5    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v29, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    move-object/from16 v5, p2

    move-object/from16 v30, v6

    .end local v6    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v30, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    move/from16 v6, v25

    move-object/from16 v25, v7

    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v25, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v7, v22

    :try_start_582
    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 1679
    .local v0, "res":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v2, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1681
    .local v1, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    iget v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_582 .. :try_end_591} :catch_5ba

    move-object/from16 v4, v26

    .end local v26    # "mSalt":[B
    .local v4, "mSalt":[B
    :try_start_593
    invoke-direct {v2, v1, v4, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_596
    .catch Ljava/lang/Exception; {:try_start_593 .. :try_end_596} :catch_5b4

    move-object v0, v2

    .line 1686
    .end local v1    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .local v0, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    nop

    .line 1691
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v2, v28

    .end local v28    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v2, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1693
    .local v1, "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_5a9

    .line 1695
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .local v3, "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    goto :goto_5b0

    .line 1699
    .end local v3    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .restart local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :cond_5a9
    move-object/from16 v5, p1

    new-instance v3, Lcom/android/org/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1702
    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .restart local v3    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    :goto_5b0
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/DEROutputStream;->writeObject(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1703
    return-void

    .line 1683
    .end local v0    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v1    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v3    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .restart local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .restart local v28    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_5b4
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v2, v28

    .end local v28    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    goto :goto_5df

    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "mSalt":[B
    .restart local v26    # "mSalt":[B
    .restart local v28    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_5ba
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v4, v26

    move-object/from16 v2, v28

    .end local v26    # "mSalt":[B
    .end local v28    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v4    # "mSalt":[B
    goto :goto_5df

    .end local v4    # "mSalt":[B
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v27    # "pkg":[B
    .end local v29    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v30    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v1, "mSalt":[B
    .local v2, "pkg":[B
    .local v3, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v5    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v6    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_5c2
    move-exception v0

    move-object v4, v1

    move-object/from16 v27, v2

    move-object v2, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v25, v7

    move-object/from16 v5, p1

    .end local v1    # "mSalt":[B
    .end local v3    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v5    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v6    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v2, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v4    # "mSalt":[B
    .restart local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v27    # "pkg":[B
    .restart local v29    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v30    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    goto :goto_5df

    .end local v23    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v27    # "pkg":[B
    .end local v29    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v30    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v1    # "mSalt":[B
    .local v2, "pkg":[B
    .restart local v3    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v4, "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v6    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_5d0
    move-exception v0

    move-object/from16 v27, v2

    move-object v2, v3

    move-object/from16 v23, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v25, v7

    move-object/from16 v5, p1

    move-object v4, v1

    .line 1685
    .end local v1    # "mSalt":[B
    .end local v3    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v5    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v6    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v4, "mSalt":[B
    .restart local v23    # "bOut":Ljava/io/ByteArrayOutputStream;
    .restart local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v27    # "pkg":[B
    .restart local v29    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v30    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :goto_5df
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1317
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "mSalt":[B
    .end local v9    # "usedSet":Ljava/util/Set;
    .end local v10    # "cs":Ljava/util/Enumeration;
    .end local v11    # "certSeqEncoded":[B
    .end local v12    # "doneCerts":Ljava/util/Hashtable;
    .end local v13    # "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v14    # "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .end local v15    # "certBytes":[B
    .end local v16    # "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v17    # "cInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v18    # "asn1Out":Lcom/android/org/bouncycastle/asn1/DEROutputStream;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "keySEncoded":[B
    .end local v22    # "data":[B
    .end local v23    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v24    # "cSalt":[B
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v27    # "pkg":[B
    .end local v29    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v30    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :cond_5fa
    move-object v5, v9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 6
    .param p0, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 244
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 245
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 247
    .local v1, "resBuf":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    .line 248
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 249
    invoke-interface {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 250
    return-object v1
.end method

.method private blacklist getUsedCertificateSet()Ljava/util/Set;
    .registers 7

    .line 1707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1709
    .local v0, "usedSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1711
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1713
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1715
    .local v3, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v3

    if-eq v4, v5, :cond_27

    .line 1717
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1715
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1719
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    :cond_27
    goto :goto_b

    .line 1721
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_28
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "en":Ljava/util/Enumeration;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1723
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1725
    .restart local v2    # "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1727
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1728
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_2e

    .line 1730
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_42
    return-object v0
.end method

.method private blacklist validateIterationCount(Ljava/math/BigInteger;)I
    .registers 7
    .param p1, "i"    # Ljava/math/BigInteger;

    .line 1241
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 1243
    .local v0, "count":I
    if-ltz v0, :cond_39

    .line 1248
    const-string v1, "com.android.org.bouncycastle.pkcs12.max_it_count"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1249
    .local v1, "maxValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_38

    .line 1251
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_15

    goto :goto_38

    .line 1253
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iteration count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " greater than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1257
    :cond_38
    :goto_38
    return v0

    .line 1245
    .end local v1    # "maxValue":Ljava/math/BigInteger;
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "negative iteration count found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected blacklist cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .registers 14
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 698
    .local v0, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x2

    .line 700
    .local v1, "mode":I
    :goto_9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const-string v3, "exception decrypting data - "

    if-eqz v2, :cond_5d

    .line 702
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v2

    .line 705
    .local v2, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :try_start_1b
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 706
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    .line 707
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 708
    .local v4, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v5, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 710
    .local v5, "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 712
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 713
    invoke-virtual {v6, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    return-object v3

    .line 715
    .end local v4    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :catch_43
    move-exception v4

    .line 717
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 720
    .end local v2    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 724
    :try_start_65
    invoke-direct {p0, v1, p3, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 726
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_6e

    return-object v3

    .line 728
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_6e
    move-exception v2

    .line 730
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 735
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_88
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown PBE algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist core-platform-api test-api engineAliases()Ljava/util/Enumeration;
    .registers 5

    .line 261
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 263
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 264
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 266
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 269
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 270
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 272
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 275
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 279
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist core-platform-api test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist core-platform-api test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 299
    .local v0, "k":Ljava/security/Key;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 301
    .local v1, "c":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_20

    .line 303
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_20
    if-eqz v0, :cond_45

    .line 308
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 311
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/security/cert/Certificate;

    .line 313
    :cond_35
    if-eqz v1, :cond_45

    .line 315
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v2    # "id":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method public whitelist core-platform-api test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 326
    if-eqz p1, :cond_2a

    .line 331
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 336
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_29

    .line 338
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 341
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_29

    .line 345
    :cond_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    .line 349
    .end local v1    # "id":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v0

    .line 328
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 355
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 356
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 358
    .local v1, "k":Ljava/util/Enumeration;
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 360
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 361
    .local v2, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 365
    return-object v3

    .line 367
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_25
    goto :goto_c

    .line 369
    :cond_26
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 372
    :goto_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 374
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 375
    .restart local v2    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    .restart local v3    # "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 379
    return-object v3

    .line 381
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_4b
    goto :goto_32

    .line 383
    :cond_4c
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist core-platform-api test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;

    .line 389
    if-eqz p1, :cond_ce

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 396
    return-object v1

    .line 399
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 401
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_cd

    .line 403
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 405
    .local v1, "cs":Ljava/util/Vector;
    :goto_15
    if-eqz v0, :cond_b7

    .line 407
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 408
    .local v2, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 410
    .local v3, "nextC":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 411
    .local v4, "bytes":[B
    if-eqz v4, :cond_68

    .line 415
    :try_start_27
    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, v4}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 417
    .local v5, "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 418
    .local v6, "authBytes":[B
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    move-object v5, v7

    .line 420
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v7

    .line 421
    .local v7, "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v8

    if-eqz v8, :cond_5c

    .line 423
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v9, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_5b} :catch_5d

    move-object v3, v8

    .line 430
    .end local v5    # "aIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v6    # "authBytes":[B
    .end local v7    # "id":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    :cond_5c
    goto :goto_68

    .line 427
    :catch_5d
    move-exception v5

    .line 429
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 433
    .end local v5    # "e":Ljava/io/IOException;
    :cond_68
    :goto_68
    if-nez v3, :cond_a5

    .line 438
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    .line 439
    .local v5, "i":Ljava/security/Principal;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 441
    .local v6, "s":Ljava/security/Principal;
    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 443
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 445
    .local v7, "e":Ljava/util/Enumeration;
    :goto_7e
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 447
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 448
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 449
    .local v9, "sub":Ljava/security/Principal;
    invoke-interface {v9, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 453
    :try_start_9a
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a1} :catch_a3

    .line 454
    move-object v3, v8

    .line 455
    goto :goto_a5

    .line 457
    :catch_a3
    move-exception v10

    .line 462
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v9    # "sub":Ljava/security/Principal;
    :cond_a4
    goto :goto_7e

    .line 466
    .end local v5    # "i":Ljava/security/Principal;
    .end local v6    # "s":Ljava/security/Principal;
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_a5
    :goto_a5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 468
    const/4 v0, 0x0

    goto :goto_b5

    .line 472
    :cond_ad
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 473
    if-eq v3, v0, :cond_b4

    .line 475
    move-object v0, v3

    goto :goto_b5

    .line 479
    :cond_b4
    const/4 v0, 0x0

    .line 482
    .end local v2    # "x509c":Ljava/security/cert/X509Certificate;
    .end local v3    # "nextC":Ljava/security/cert/Certificate;
    .end local v4    # "bytes":[B
    :goto_b5
    goto/16 :goto_15

    .line 484
    :cond_b7
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 486
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_be
    array-length v4, v2

    if-eq v3, v4, :cond_cc

    .line 488
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v3

    .line 486
    add-int/lit8 v3, v3, 0x1

    goto :goto_be

    .line 491
    .end local v3    # "i":I
    :cond_cc
    return-object v2

    .line 494
    .end local v1    # "cs":Ljava/util/Vector;
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    :cond_cd
    return-object v1

    .line 391
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 499
    if-eqz p1, :cond_1a

    .line 503
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 505
    const/4 v0, 0x0

    return-object v0

    .line 507
    :cond_14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 501
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 515
    if-eqz p1, :cond_b

    .line 520
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    .line 517
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist core-platform-api test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist core-platform-api test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 40
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    if-nez v9, :cond_9

    .line 786
    return-void

    .line 789
    :cond_9
    if-eqz v10, :cond_769

    .line 794
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 796
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 798
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v12

    .line 800
    .local v12, "head":I
    const/16 v0, 0x30

    if-ne v12, v0, :cond_761

    .line 805
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->reset()V

    .line 807
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v0

    .line 812
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_27
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_752

    move-object v14, v0

    .line 817
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    nop

    .line 819
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v15

    .line 820
    .local v15, "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v7, v0

    .line 821
    .local v7, "chain":Ljava/util/Vector;
    const/16 v16, 0x0

    .line 822
    .local v16, "unmarkedKey":Z
    const/16 v17, 0x0

    .line 824
    .local v17, "wrongPKCS12Zero":Z
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_10c

    .line 826
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v18

    .line 827
    .local v18, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v19

    .line 828
    .local v19, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 829
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v6

    .line 830
    .local v6, "salt":[B
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 831
    array-length v0, v6

    iput v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 833
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v20

    .line 837
    .local v20, "data":[B
    :try_start_6e
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_76} :catch_105
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_76} :catch_e4

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v5, p2

    move-object/from16 v21, v6

    .end local v6    # "salt":[B
    .local v21, "salt":[B
    move v6, v0

    move-object v9, v7

    .end local v7    # "chain":Ljava/util/Vector;
    .local v9, "chain":Ljava/util/Vector;
    move-object/from16 v7, v20

    :try_start_82
    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 838
    .local v0, "res":[B
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v1

    move-object v7, v1

    .line 840
    .local v7, "dig":[B
    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 842
    array-length v1, v10
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_92} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_dc

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_c4

    .line 848
    :try_start_96
    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9e} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9e} :catch_dc

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v21

    move-object/from16 v5, p2

    move-object/from16 v23, v0

    move-object v0, v6

    .end local v0    # "res":[B
    .local v23, "res":[B
    move/from16 v6, v22

    move-object/from16 v22, v11

    move-object v11, v7

    .end local v7    # "dig":[B
    .local v11, "dig":[B
    .local v22, "bufIn":Ljava/io/BufferedInputStream;
    move-object/from16 v7, v20

    :try_start_b0
    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v1

    .line 850
    .end local v23    # "res":[B
    .local v1, "res":[B
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 855
    const/4 v0, 0x1

    move/from16 v17, v0

    .end local v17    # "wrongPKCS12Zero":Z
    .local v0, "wrongPKCS12Zero":Z
    goto :goto_d9

    .line 852
    .end local v0    # "wrongPKCS12Zero":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    :cond_be
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v9    # "chain":Ljava/util/Vector;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v16    # "unmarkedKey":Z
    .end local v17    # "wrongPKCS12Zero":Z
    .end local v18    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v19    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v20    # "data":[B
    .end local v21    # "salt":[B
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v2

    .line 844
    .end local v1    # "res":[B
    .local v0, "res":[B
    .restart local v7    # "dig":[B
    .restart local v9    # "chain":Ljava/util/Vector;
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v16    # "unmarkedKey":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    .restart local v18    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v19    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local v20    # "data":[B
    .restart local v21    # "salt":[B
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :cond_c4
    move-object/from16 v23, v0

    move-object v0, v6

    move-object/from16 v22, v11

    move-object v11, v7

    .end local v0    # "res":[B
    .end local v7    # "dig":[B
    .local v11, "dig":[B
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v23    # "res":[B
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v9    # "chain":Ljava/util/Vector;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v16    # "unmarkedKey":Z
    .end local v17    # "wrongPKCS12Zero":Z
    .end local v18    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v19    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v20    # "data":[B
    .end local v21    # "salt":[B
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local p0    # "this":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .end local p1    # "stream":Ljava/io/InputStream;
    .end local p2    # "password":[C
    throw v1
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_d0} :catch_d2
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d0} :catch_d0

    .line 862
    .end local v11    # "dig":[B
    .end local v23    # "res":[B
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v16    # "unmarkedKey":Z
    .restart local v17    # "wrongPKCS12Zero":Z
    .restart local v18    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .restart local v19    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .restart local v20    # "data":[B
    .restart local v21    # "salt":[B
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local p0    # "this":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
    .restart local p1    # "stream":Ljava/io/InputStream;
    .restart local p2    # "password":[C
    :catch_d0
    move-exception v0

    goto :goto_ea

    .line 858
    :catch_d2
    move-exception v0

    goto :goto_10b

    .line 840
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "res":[B
    .restart local v7    # "dig":[B
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    :cond_d4
    move-object/from16 v23, v0

    move-object/from16 v22, v11

    move-object v11, v7

    .line 865
    .end local v0    # "res":[B
    .end local v7    # "dig":[B
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    :goto_d9
    move/from16 v7, v17

    goto :goto_111

    .line 862
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_dc
    move-exception v0

    move-object/from16 v22, v11

    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_ea

    .line 858
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_e0
    move-exception v0

    move-object/from16 v22, v11

    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_10b

    .line 862
    .end local v9    # "chain":Ljava/util/Vector;
    .end local v21    # "salt":[B
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "salt":[B
    .local v7, "chain":Ljava/util/Vector;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_e4
    move-exception v0

    move-object/from16 v21, v6

    move-object v9, v7

    move-object/from16 v22, v11

    .line 864
    .end local v6    # "salt":[B
    .end local v7    # "chain":Ljava/util/Vector;
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v21    # "salt":[B
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    :goto_ea
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error constructing MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 858
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "chain":Ljava/util/Vector;
    .end local v21    # "salt":[B
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v6    # "salt":[B
    .restart local v7    # "chain":Ljava/util/Vector;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_105
    move-exception v0

    move-object/from16 v21, v6

    move-object v9, v7

    move-object/from16 v22, v11

    .line 860
    .end local v6    # "salt":[B
    .end local v7    # "chain":Ljava/util/Vector;
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v21    # "salt":[B
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    :goto_10b
    throw v0

    .line 824
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "chain":Ljava/util/Vector;
    .end local v18    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v19    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .end local v20    # "data":[B
    .end local v21    # "salt":[B
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v7    # "chain":Ljava/util/Vector;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :cond_10c
    move-object v9, v7

    move-object/from16 v22, v11

    .end local v7    # "chain":Ljava/util/Vector;
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    move/from16 v7, v17

    .line 868
    .end local v17    # "wrongPKCS12Zero":Z
    .local v7, "wrongPKCS12Zero":Z
    :goto_111
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 869
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 871
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "unmarked"

    const-string v5, "attempt to add existing attribute with different value"

    if-eqz v0, :cond_5cf

    .line 873
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    move-object v13, v0

    .line 875
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v0

    .line 876
    .local v0, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    .line 878
    .local v2, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14d
    array-length v11, v2

    if-eq v1, v11, :cond_5bd

    .line 880
    aget-object v11, v2, v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ed

    .line 882
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    aget-object v11, v2, v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 883
    .local v3, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 885
    .local v11, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v19, 0x0

    move/from16 v4, v19

    .local v4, "j":I
    :goto_179
    move-object/from16 v20, v0

    .end local v0    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v20, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v4, v0, :cond_2da

    .line 887
    invoke-virtual {v11, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v0

    .line 888
    .local v0, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v21, v3

    .end local v3    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v21, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    move-object/from16 v23, v11

    .end local v11    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v23, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_291

    .line 890
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v3

    .line 891
    .local v3, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    move/from16 v24, v12

    .end local v12    # "head":I
    .local v24, "head":I
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v12

    invoke-virtual {v8, v11, v12, v10, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v11

    .line 896
    .local v11, "privKey":Ljava/security/PrivateKey;
    const/4 v12, 0x0

    .line 897
    .local v12, "alias":Ljava/lang/String;
    const/16 v25, 0x0

    .line 899
    .local v25, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v26

    if-eqz v26, :cond_265

    .line 901
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v26

    .line 902
    .local v26, "e":Ljava/util/Enumeration;
    :goto_1c0
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_25c

    .line 904
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v28, v3

    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .local v28, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    move-object/from16 v3, v27

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 905
    .local v3, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v27, v12

    const/4 v12, 0x0

    .end local v12    # "alias":Ljava/lang/String;
    .local v27, "alias":Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 906
    .local v12, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v19, v13

    const/4 v13, 0x1

    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v19, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 907
    .local v13, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 909
    .local v18, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v31

    if-lez v31, :cond_226

    .line 911
    move-object/from16 v31, v14

    const/4 v14, 0x0

    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v31, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v29

    move-object/from16 v14, v29

    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 913
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v14, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v29, v3

    .end local v3    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v29, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    instance-of v3, v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_221

    .line 915
    move-object v3, v11

    check-cast v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 916
    .local v3, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v3, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v18

    .line 917
    .local v18, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v18, :cond_21b

    .line 920
    move-object/from16 v33, v13

    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v33, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_215

    goto :goto_223

    .line 922
    :cond_215
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 928
    .end local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_21b
    move-object/from16 v33, v13

    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface {v3, v12, v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_223

    .line 913
    .end local v3    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_221
    move-object/from16 v33, v13

    .line 933
    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :goto_223
    move-object/from16 v18, v14

    goto :goto_22c

    .line 909
    .end local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v3, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v18, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_226
    move-object/from16 v29, v3

    move-object/from16 v33, v13

    move-object/from16 v31, v14

    .line 933
    .end local v3    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :goto_22c
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_243

    .line 935
    move-object/from16 v3, v18

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 936
    .end local v27    # "alias":Ljava/lang/String;
    .local v3, "alias":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v13, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v12, v3

    goto :goto_254

    .line 938
    .end local v3    # "alias":Ljava/lang/String;
    .restart local v27    # "alias":Ljava/lang/String;
    :cond_243
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_252

    .line 940
    move-object/from16 v25, v18

    check-cast v25, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v12, v27

    goto :goto_254

    .line 938
    :cond_252
    move-object/from16 v12, v27

    .line 942
    .end local v18    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v27    # "alias":Ljava/lang/String;
    .end local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v33    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v12, "alias":Ljava/lang/String;
    :goto_254
    move-object/from16 v13, v19

    move-object/from16 v3, v28

    move-object/from16 v14, v31

    goto/16 :goto_1c0

    .line 902
    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v28    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v3, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_25c
    move-object/from16 v28, v3

    move-object/from16 v27, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v27    # "alias":Ljava/lang/String;
    .restart local v28    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    goto :goto_26c

    .line 899
    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v26    # "e":Ljava/util/Enumeration;
    .end local v27    # "alias":Ljava/lang/String;
    .end local v28    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v12    # "alias":Ljava/lang/String;
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_265
    move-object/from16 v28, v3

    move-object v3, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    .line 945
    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v28    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :goto_26c
    if-eqz v25, :cond_289

    .line 947
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>([B)V

    .line 949
    .local v3, "name":Ljava/lang/String;
    if-nez v12, :cond_283

    .line 951
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v13, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_288

    .line 955
    :cond_283
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v13, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    .end local v3    # "name":Ljava/lang/String;
    :goto_288
    goto :goto_290

    .line 960
    :cond_289
    const/16 v16, 0x1

    .line 961
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v6, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 963
    .end local v11    # "privKey":Ljava/security/PrivateKey;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v25    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v28    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :goto_290
    goto :goto_2ca

    .line 964
    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v12, "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_291
    move/from16 v24, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v24    # "head":I
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 966
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2ca

    .line 970
    :cond_2a7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extra in data "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 885
    .end local v0    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_2ca
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v19

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v11, v23

    move/from16 v12, v24

    move-object/from16 v14, v31

    goto/16 :goto_179

    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v23    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v3, "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v11, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_2da
    move-object/from16 v21, v3

    move-object/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    .line 974
    .end local v3    # "dIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "j":I
    .end local v11    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v24    # "head":I
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    move v12, v1

    move-object v13, v2

    move-object v2, v5

    move-object/from16 v35, v6

    move/from16 v23, v7

    goto/16 :goto_5a8

    .line 975
    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v0, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_2ed
    move-object/from16 v20, v0

    move/from16 v24, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    .end local v0    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v24    # "head":I
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_563

    .line 977
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v0

    .line 978
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 979
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 978
    move v12, v1

    .end local v1    # "i":I
    .local v12, "i":I
    move-object/from16 v1, p0

    move-object v13, v2

    .end local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v13, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    move v2, v3

    const/4 v14, 0x1

    move-object v3, v4

    const/4 v14, 0x0

    move-object/from16 v4, p2

    move-object/from16 v34, v5

    move v5, v7

    move-object/from16 v35, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    .line 980
    .local v1, "octets":[B
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 982
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_335
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_558

    .line 984
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v4

    .line 986
    .local v4, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35e

    .line 988
    invoke-virtual {v9, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move/from16 v23, v7

    move-object/from16 v2, v34

    goto/16 :goto_547

    .line 990
    :cond_35e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_453

    .line 992
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v5

    .line 993
    .local v5, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v11

    invoke-virtual {v8, v6, v11, v10, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v6

    .line 998
    .local v6, "privKey":Ljava/security/PrivateKey;
    move-object v11, v6

    check-cast v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 999
    .local v11, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v21, 0x0

    .line 1000
    .local v21, "alias":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1002
    .local v23, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v25

    move-object/from16 v36, v21

    .line 1003
    .end local v21    # "alias":Ljava/lang/String;
    .local v25, "e":Ljava/util/Enumeration;
    .local v36, "alias":Ljava/lang/String;
    :goto_38f
    invoke-interface/range {v25 .. v25}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_42b

    .line 1005
    invoke-interface/range {v25 .. v25}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v26, v0

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v26, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1006
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    move-object/from16 v14, v21

    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1007
    .local v14, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v21, v1

    const/4 v1, 0x1

    .end local v1    # "octets":[B
    .local v21, "octets":[B
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    move-object/from16 v1, v27

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 1008
    .local v1, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v27, 0x0

    .line 1010
    .local v27, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v28

    if-lez v28, :cond_3f2

    .line 1012
    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v28, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1014
    .end local v27    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v11, v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    .line 1015
    .local v27, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v27, :cond_3e6

    .line 1018
    move-object/from16 v30, v1

    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v30, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3dc

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    goto :goto_3ef

    .line 1020
    :cond_3dc
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v32, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1026
    .end local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3e6
    move-object/from16 v30, v1

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v11, v14, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1030
    .end local v27    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_3ef
    move-object/from16 v27, v0

    goto :goto_3fa

    .line 1010
    .end local v28    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v27, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3f2
    move-object/from16 v28, v0

    move-object/from16 v30, v1

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .line 1030
    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :goto_3fa
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_412

    .line 1032
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    .end local v36    # "alias":Ljava/lang/String;
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v36, v0

    goto :goto_420

    .line 1035
    .end local v0    # "alias":Ljava/lang/String;
    .restart local v36    # "alias":Ljava/lang/String;
    :cond_412
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_420

    .line 1037
    move-object/from16 v0, v27

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v23, v0

    .line 1039
    .end local v14    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v27    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v28    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_420
    :goto_420
    move-object/from16 v34, v2

    move-object/from16 v1, v21

    move-object/from16 v0, v26

    move-object/from16 v2, v32

    const/4 v14, 0x0

    goto/16 :goto_38f

    .line 1041
    .end local v21    # "octets":[B
    .end local v26    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_42b
    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v21    # "octets":[B
    .restart local v26    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1043
    .local v0, "name":Ljava/lang/String;
    move-object/from16 v1, v36

    .end local v36    # "alias":Ljava/lang/String;
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_44a

    .line 1045
    iget-object v14, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v14, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_44f

    .line 1049
    :cond_44a
    iget-object v14, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v14, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .end local v11    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v25    # "e":Ljava/util/Enumeration;
    :goto_44f
    move/from16 v23, v7

    goto/16 :goto_547

    .line 1052
    .end local v21    # "octets":[B
    .end local v26    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_453
    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move-object/from16 v2, v34

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v21    # "octets":[B
    .restart local v26    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_522

    .line 1054
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 1055
    .local v0, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 1060
    .local v1, "privKey":Ljava/security/PrivateKey;
    move-object v5, v1

    check-cast v5, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1061
    .local v5, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v6, 0x0

    .line 1062
    .local v6, "alias":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1064
    .local v11, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v14

    .line 1065
    .local v14, "e":Ljava/util/Enumeration;
    :goto_480
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_503

    .line 1067
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v0

    .end local v0    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v25, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v23 .. v23}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1068
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move/from16 v23, v7

    const/4 v7, 0x0

    .end local v7    # "wrongPKCS12Zero":Z
    .local v23, "wrongPKCS12Zero":Z
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 1069
    .local v7, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    .line 1070
    .local v10, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v27, 0x0

    .line 1072
    .restart local v27    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v28

    if-lez v28, :cond_4f7

    .line 1074
    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1076
    .end local v27    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v5, v7}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    .line 1077
    .local v27, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v27, :cond_4d0

    .line 1080
    move-object/from16 v30, v10

    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4ca

    goto :goto_4d5

    .line 1082
    :cond_4ca
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1088
    .end local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_4d0
    move-object/from16 v30, v10

    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface {v5, v7, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1091
    :goto_4d5
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4ea

    .line 1093
    move-object v10, v0

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1094
    iget-object v10, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v10, v6, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4fb

    .line 1096
    :cond_4ea
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4fb

    .line 1098
    move-object v10, v0

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v11, v10

    .end local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v10, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_4fb

    .line 1072
    .end local v28    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v30    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v10, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v27, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4f7
    move-object/from16 v28, v0

    move-object/from16 v30, v10

    .line 1101
    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v27    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4fb
    :goto_4fb
    move-object/from16 v10, p2

    move/from16 v7, v23

    move-object/from16 v0, v25

    goto/16 :goto_480

    .line 1103
    .end local v23    # "wrongPKCS12Zero":Z
    .end local v25    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v0, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v7, "wrongPKCS12Zero":Z
    :cond_503
    move-object/from16 v25, v0

    move/from16 v23, v7

    .end local v0    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v23    # "wrongPKCS12Zero":Z
    .restart local v25    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 1105
    .local v0, "name":Ljava/lang/String;
    if-nez v6, :cond_51c

    .line 1107
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_521

    .line 1111
    :cond_51c
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v7, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "privKey":Ljava/security/PrivateKey;
    .end local v5    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v14    # "e":Ljava/util/Enumeration;
    .end local v25    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_521
    goto :goto_547

    .line 1116
    .end local v23    # "wrongPKCS12Zero":Z
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_522
    move/from16 v23, v7

    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v23    # "wrongPKCS12Zero":Z
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extra in encryptedData "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    .end local v4    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_547
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p2

    move-object/from16 v34, v2

    move-object/from16 v1, v21

    move/from16 v7, v23

    move-object/from16 v0, v26

    move-object/from16 v2, v32

    const/4 v14, 0x0

    goto/16 :goto_335

    .end local v21    # "octets":[B
    .end local v23    # "wrongPKCS12Zero":Z
    .end local v26    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v32    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_558
    move-object/from16 v26, v0

    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move/from16 v23, v7

    move-object/from16 v2, v34

    .line 1120
    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "j":I
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v23    # "wrongPKCS12Zero":Z
    goto :goto_5a8

    .line 1123
    .end local v12    # "i":I
    .end local v13    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v23    # "wrongPKCS12Zero":Z
    .local v1, "i":I
    .local v2, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_563
    move v12, v1

    move-object v13, v2

    move-object v2, v5

    move-object/from16 v35, v6

    move/from16 v23, v7

    .end local v1    # "i":I
    .end local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v12    # "i":I
    .restart local v13    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v23    # "wrongPKCS12Zero":Z
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v13, v12

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1124
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v13, v12

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 878
    :goto_5a8
    add-int/lit8 v1, v12, 0x1

    move-object/from16 v10, p2

    move-object v5, v2

    move-object v2, v13

    move-object/from16 v13, v19

    move-object/from16 v0, v20

    move/from16 v7, v23

    move/from16 v12, v24

    move-object/from16 v14, v31

    move-object/from16 v6, v35

    const/4 v11, 0x0

    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_14d

    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v23    # "wrongPKCS12Zero":Z
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v0, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "wrongPKCS12Zero":Z
    .local v12, "head":I
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_5bd
    move-object/from16 v20, v0

    move-object/from16 v35, v6

    move/from16 v23, v7

    move/from16 v24, v12

    move-object/from16 v19, v13

    move-object/from16 v31, v14

    move v12, v1

    move-object v13, v2

    move-object v2, v5

    .end local v0    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v1    # "i":I
    .end local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v12, "i":I
    .local v13, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v23    # "wrongPKCS12Zero":Z
    .restart local v24    # "head":I
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    move-object/from16 v13, v19

    goto :goto_5d8

    .line 871
    .end local v19    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v20    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v23    # "wrongPKCS12Zero":Z
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v7    # "wrongPKCS12Zero":Z
    .local v12, "head":I
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_5cf
    move-object v2, v5

    move-object/from16 v35, v6

    move/from16 v23, v7

    move/from16 v24, v12

    move-object/from16 v31, v14

    .line 1129
    .end local v7    # "wrongPKCS12Zero":Z
    .end local v12    # "head":I
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v23    # "wrongPKCS12Zero":Z
    .restart local v24    # "head":I
    .restart local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :goto_5d8
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 1130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 1131
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 1133
    const/4 v0, 0x0

    move v1, v0

    .restart local v1    # "i":I
    :goto_5f0
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_751

    .line 1135
    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1136
    .local v3, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v4

    .line 1138
    .local v4, "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_734

    .line 1147
    :try_start_611
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 1148
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1149
    .local v0, "cIn":Ljava/io/ByteArrayInputStream;
    iget-object v5, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5
    :try_end_626
    .catch Ljava/lang/Exception; {:try_start_611 .. :try_end_626} :catch_727

    move-object v0, v5

    .line 1154
    .local v0, "cert":Ljava/security/cert/Certificate;
    nop

    .line 1159
    const/4 v5, 0x0

    .line 1160
    .local v5, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v6, 0x0

    .line 1162
    .restart local v6    # "alias":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    if-eqz v7, :cond_6c1

    .line 1164
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 1165
    .local v7, "e":Ljava/util/Enumeration;
    :goto_638
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6bc

    .line 1167
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    .line 1168
    .local v10, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    .line 1169
    .local v12, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v14

    .line 1171
    .local v14, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    if-lez v17, :cond_6b2

    .line 1173
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1174
    .local v11, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v17, 0x0

    .line 1176
    .local v17, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v20, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v20, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    instance-of v3, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_692

    .line 1178
    move-object v3, v0

    check-cast v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1180
    .end local v17    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .local v3, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v3, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    .line 1181
    .local v17, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v17, :cond_68a

    .line 1184
    move-object/from16 v21, v5

    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v21, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_684

    goto :goto_68f

    .line 1186
    :cond_684
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1192
    .end local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_68a
    move-object/from16 v21, v5

    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-interface {v3, v12, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1196
    .end local v17    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_68f
    move-object/from16 v17, v3

    goto :goto_694

    .line 1176
    .end local v3    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v17, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    :cond_692
    move-object/from16 v21, v5

    .line 1196
    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :goto_694
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a6

    .line 1198
    move-object v3, v11

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, v21

    goto :goto_6b8

    .line 1200
    :cond_6a6
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b6

    .line 1202
    move-object v5, v11

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    .end local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_6b8

    .line 1171
    .end local v11    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v17    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v3, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6b2
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .line 1205
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v10    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v14    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_6b6
    move-object/from16 v5, v21

    .end local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :goto_6b8
    move-object/from16 v3, v20

    goto/16 :goto_638

    .line 1165
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6bc
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_6c3

    .line 1162
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v21    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    :cond_6c1
    move-object/from16 v20, v3

    .line 1208
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_6c3
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    if-eqz v16, :cond_704

    .line 1212
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_701

    .line 1214
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 1216
    .local v3, "name":Ljava/lang/String;
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v10, v35

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_721

    .line 1212
    :cond_701
    move-object/from16 v10, v35

    goto :goto_721

    .line 1225
    :cond_704
    move-object/from16 v10, v35

    if-eqz v5, :cond_71a

    .line 1227
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 1229
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    .end local v3    # "name":Ljava/lang/String;
    :cond_71a
    if-eqz v6, :cond_721

    .line 1233
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v6, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1133
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_721
    :goto_721
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v35, v10

    goto/16 :goto_5f0

    .line 1151
    .local v3, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    :catch_727
    move-exception v0

    move-object/from16 v20, v3

    .line 1153
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1140
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_734
    move-object/from16 v20, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported certificate type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    .end local v1    # "i":I
    .end local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v20    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_751
    return-void

    .line 814
    .end local v9    # "chain":Ljava/util/Vector;
    .end local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v16    # "unmarkedKey":Z
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v23    # "wrongPKCS12Zero":Z
    .end local v24    # "head":I
    .end local v31    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    .local v12, "head":I
    :catch_752
    move-exception v0

    move-object/from16 v22, v11

    move/from16 v24, v12

    .line 816
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v12    # "head":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v24    # "head":I
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v24    # "head":I
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v12    # "head":I
    :cond_761
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v12    # "head":I
    :cond_769
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 545
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-void

    .line 542
    :cond_1c
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 565
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_47

    .line 570
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_13

    if-eqz p4, :cond_b

    goto :goto_13

    .line 572
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 580
    :cond_1e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    if-eqz p4, :cond_46

    .line 583
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    array-length v1, p4

    if-eq v0, v1, :cond_46

    .line 587
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 590
    .end local v0    # "i":I
    :cond_46
    return-void

    .line 567
    :cond_47
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 555
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api engineSize()I
    .registers 5

    .line 594
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 596
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 597
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 599
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 602
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 603
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 605
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 606
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 608
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 612
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    return v2
.end method

.method public whitelist core-platform-api test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1310
    return-void
.end method

.method public whitelist core-platform-api test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1264
    if-eqz p1, :cond_87

    .line 1269
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-nez v0, :cond_2a

    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v0, :cond_b

    goto :goto_2a

    .line 1271
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1277
    :cond_2a
    :goto_2a
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-eqz v0, :cond_32

    .line 1279
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    .local v0, "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    goto :goto_49

    .line 1283
    .end local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :cond_32
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1284
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 1288
    .restart local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :goto_49
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 1289
    .local v1, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v1, :cond_51

    .line 1291
    const/4 v2, 0x0

    .local v2, "password":[C
    goto :goto_5c

    .line 1293
    .end local v2    # "password":[C
    :cond_51
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_68

    .line 1295
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1303
    .restart local v2    # "password":[C
    :goto_5c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1304
    return-void

    .line 1299
    .end local v2    # "password":[C
    :cond_68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support for protection parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1266
    .end local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    .end local v1    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'param\' arg cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .line 256
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 257
    return-void
.end method

.method protected blacklist unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 13
    .param p1, "algId"    # Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 625
    .local v0, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_4
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_6d

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x4

    if-eqz v1, :cond_42

    .line 627
    :try_start_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    .line 628
    .local v1, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 629
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    .line 630
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 632
    .local v5, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 634
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v7, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 636
    .local v7, "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    invoke-virtual {v6, v4, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 639
    invoke-virtual {v6, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2

    .line 641
    .end local v1    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v5    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    :cond_42
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 644
    invoke-direct {p0, v4, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 647
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_6d

    return-object v2

    .line 653
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_55
    nop

    .line 655
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception unwrapping private key - cannot recognise: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 650
    :catch_6d
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception unwrapping private key - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected blacklist wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 11
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 670
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 671
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 672
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    .line 673
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 675
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 677
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x3

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 679
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_31

    move-object v1, v4

    .line 684
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .local v1, "out":[B
    nop

    .line 686
    return-object v1

    .line 681
    .end local v1    # "out":[B
    :catch_31
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception encrypting data - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
