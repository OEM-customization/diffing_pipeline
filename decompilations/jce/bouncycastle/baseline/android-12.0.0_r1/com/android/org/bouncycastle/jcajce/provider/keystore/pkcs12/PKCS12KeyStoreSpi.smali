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

    .line 130
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

    .line 209
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 125
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 132
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 133
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 135
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 136
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 154
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 161
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 162
    const v0, 0x19000

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 163
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 210
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 211
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 215
    :try_start_4c
    const-string v0, "X.509"

    invoke-interface {p1, v0}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_54} :catch_56

    .line 220
    nop

    .line 221
    return-void

    .line 217
    :catch_56
    move-exception v0

    .line 219
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

    .line 117
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

    .line 1786
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p2, p3}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1788
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 1789
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v2, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v2, p4, p5}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1790
    invoke-virtual {v1, p6}, Ljavax/crypto/Mac;->update([B)V

    .line 1792
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

    .line 730
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v0

    .line 731
    .local v0, "alg":Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v1

    .line 732
    .local v1, "func":Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 734
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

    .line 737
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PBKDF2Params;->isDefaultPrf()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 739
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

    .line 743
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

    .line 746
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

    .line 748
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 749
    .local v6, "encParams":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v7, v6, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v7, :cond_9d

    .line 751
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, p1, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 764
    :cond_9d
    return-object v5
.end method

.method private blacklist createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .registers 13
    .param p1, "certId"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1690
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1692
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1693
    .local v0, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1695
    .local v1, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .line 1696
    .local v2, "cAttrSet":Z
    instance-of v3, p2, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_74

    .line 1698
    move-object v3, p2

    check-cast v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1702
    .local v3, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v3, v4}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1703
    .local v4, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1705
    :cond_31
    if-eqz p1, :cond_3d

    .line 1707
    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1711
    :cond_3d
    invoke-interface {v3}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v5

    .line 1713
    .local v5, "e":Ljava/util/Enumeration;
    :goto_41
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1715
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1721
    .local v6, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v7, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 1723
    goto :goto_41

    .line 1726
    :cond_56
    new-instance v7, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1728
    .local v7, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1729
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-interface {v3, v6}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1730
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1732
    const/4 v2, 0x1

    .line 1733
    .end local v6    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_41

    .line 1736
    .end local v3    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v4    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_74
    if-nez v2, :cond_95

    .line 1738
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1740
    .local v3, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1741
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v5, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v5, p1}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1743
    new-instance v4, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1746
    .end local v3    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_95
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v6, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v1}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    return-object v3
.end method

.method private blacklist createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 5
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .line 228
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 230
    .local v0, "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-static {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 232
    .end local v0    # "info":Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_12
    move-exception v0

    .line 234
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

    .line 1316
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    if-eqz v9, :cond_514

    .line 1380
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v10, v0

    .line 1382
    .local v10, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v11

    .line 1384
    .local v11, "ks":Ljava/util/Enumeration;
    :goto_12
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const v1, 0xc800

    const/16 v2, 0x14

    if-eqz v0, :cond_13f

    .line 1386
    new-array v0, v2, [B

    .line 1388
    .local v0, "kSalt":[B
    iget-object v2, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1390
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1391
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    .line 1392
    .local v3, "privKey":Ljava/security/PrivateKey;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v4, v0, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object v1, v4

    .line 1393
    .local v1, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    iget-object v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v3, v1, v9}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v4

    .line 1394
    .local v4, "kBytes":[B
    new-instance v5, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1395
    .local v5, "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-direct {v6, v5, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1396
    .local v6, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/4 v7, 0x0

    .line 1397
    .local v7, "attrSet":Z
    new-instance v12, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1399
    .local v12, "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v13, v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v13, :cond_dc

    .line 1401
    move-object v13, v3

    check-cast v13, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1405
    .local v13, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v14, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    .line 1406
    .local v14, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v14, :cond_77

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_74

    goto :goto_77

    :cond_74
    move-object/from16 v16, v0

    goto :goto_83

    .line 1408
    :cond_77
    :goto_77
    sget-object v15, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v16, v0

    .end local v0    # "kSalt":[B
    .local v16, "kSalt":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v15, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1414
    :goto_83
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v13, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_9f

    .line 1416
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 1418
    .local v0, "ct":Ljava/security/cert/Certificate;
    sget-object v15, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v1

    .end local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .local v17, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v1

    invoke-interface {v13, v15, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_a1

    .line 1414
    .end local v0    # "ct":Ljava/security/cert/Certificate;
    .end local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :cond_9f
    move-object/from16 v17, v1

    .line 1421
    .end local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :goto_a1
    invoke-interface {v13}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    .line 1423
    .local v0, "e":Ljava/util/Enumeration;
    :goto_a5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1425
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1426
    .local v1, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v15, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1428
    .local v15, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1429
    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v18, "e":Ljava/util/Enumeration;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSet;

    move-object/from16 v19, v3

    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .local v19, "privKey":Ljava/security/PrivateKey;
    invoke-interface {v13, v1}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1431
    const/4 v7, 0x1

    .line 1433
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v15}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1434
    .end local v1    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v15    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_a5

    .line 1423
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v19    # "privKey":Ljava/security/PrivateKey;
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_d7
    move-object/from16 v18, v0

    move-object/from16 v19, v3

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .restart local v18    # "e":Ljava/util/Enumeration;
    .restart local v19    # "privKey":Ljava/security/PrivateKey;
    goto :goto_e2

    .line 1399
    .end local v13    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v14    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v16    # "kSalt":[B
    .end local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v19    # "privKey":Ljava/security/PrivateKey;
    .local v0, "kSalt":[B
    .local v1, "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v3    # "privKey":Ljava/security/PrivateKey;
    :cond_dc
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    .line 1437
    .end local v0    # "kSalt":[B
    .end local v1    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v3    # "privKey":Ljava/security/PrivateKey;
    .restart local v16    # "kSalt":[B
    .restart local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .restart local v19    # "privKey":Ljava/security/PrivateKey;
    :goto_e2
    if-nez v7, :cond_12a

    .line 1442
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1443
    .local v0, "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1445
    .local v1, "ct":Ljava/security/cert/Certificate;
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1446
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-direct {v8, v13}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v13

    invoke-direct {v3, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1448
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1450
    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v0, v3

    .line 1452
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1453
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v13, v2}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1455
    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1458
    .end local v0    # "kSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1    # "ct":Ljava/security/cert/Certificate;
    :cond_12a
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v13, v12}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v3, v13}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1459
    .local v0, "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1460
    .end local v0    # "kBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "kBytes":[B
    .end local v5    # "kAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v7    # "attrSet":Z
    .end local v12    # "kName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v16    # "kSalt":[B
    .end local v17    # "kParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v19    # "privKey":Ljava/security/PrivateKey;
    goto/16 :goto_12

    .line 1462
    :cond_13f
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v12, "DER"

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v13

    .line 1463
    .local v13, "keySEncoded":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v0, v13}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    move-object v14, v0

    .line 1468
    .local v14, "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    new-array v15, v2, [B

    .line 1470
    .local v15, "cSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1472
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v7, v0

    .line 1473
    .local v7, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-direct {v0, v15, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    move-object/from16 v16, v0

    .line 1474
    .local v16, "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certAlgorithm:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v6, v0

    .line 1475
    .local v6, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    move-object v5, v0

    .line 1477
    .local v5, "doneCerts":Ljava/util/Hashtable;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1478
    .local v1, "cs":Ljava/util/Enumeration;
    :goto_17c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v2, "Error encoding certificate: "

    if-eqz v0, :cond_2ed

    .line 1482
    :try_start_184
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1483
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v8, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_18e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_184 .. :try_end_18e} :catch_2c9

    .line 1484
    .local v3, "cert":Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .line 1485
    .local v4, "cAttrSet":Z
    move-object/from16 v17, v1

    .end local v1    # "cs":Ljava/util/Enumeration;
    .local v17, "cs":Ljava/util/Enumeration;
    :try_start_191
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    move/from16 v18, v4

    .end local v4    # "cAttrSet":Z
    .local v18, "cAttrSet":Z
    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/DEROctetString;
    :try_end_199
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_191 .. :try_end_199} :catch_2bf

    .line 1487
    move-object/from16 v19, v10

    .end local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v19, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_19b
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v9}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1488
    .local v1, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1490
    .local v4, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v9, v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v9, :cond_247

    .line 1492
    move-object v9, v3

    check-cast v9, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1496
    .local v9, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v10}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :try_end_1b9
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_19b .. :try_end_1b9} :catch_2b7

    .line 1497
    .local v10, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    if-eqz v10, :cond_1d2

    move-object/from16 v20, v11

    .end local v11    # "ks":Ljava/util/Enumeration;
    .local v20, "ks":Ljava/util/Enumeration;
    :try_start_1bd
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1c5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1bd .. :try_end_1c5} :catch_1cb

    if-nez v11, :cond_1c8

    goto :goto_1d4

    :cond_1c8
    move-object/from16 v21, v10

    goto :goto_1e0

    .line 1547
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v10    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v18    # "cAttrSet":Z
    :catch_1cb
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    goto/16 :goto_2d4

    .line 1497
    .end local v20    # "ks":Ljava/util/Enumeration;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v10    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .restart local v11    # "ks":Ljava/util/Enumeration;
    .restart local v18    # "cAttrSet":Z
    :cond_1d2
    move-object/from16 v20, v11

    .line 1499
    .end local v11    # "ks":Ljava/util/Enumeration;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    :goto_1d4
    :try_start_1d4
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v21, v10

    .end local v10    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .local v21, "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v10, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v11, v10}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1505
    :goto_1e0
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v9, v10}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10
    :try_end_1e6
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1d4 .. :try_end_1e6} :catch_240

    if-nez v10, :cond_1f5

    .line 1507
    :try_start_1e8
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1f5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1e8 .. :try_end_1f5} :catch_1cb

    .line 1510
    :cond_1f5
    :try_start_1f5
    invoke-interface {v9}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v10

    .line 1512
    .local v10, "e":Ljava/util/Enumeration;
    :goto_1f9
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_239

    .line 1514
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1515
    .local v11, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v22, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v22 .. v22}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object/from16 v23, v22

    .line 1517
    .local v23, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v22, v10

    move-object/from16 v10, v23

    .end local v23    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v10, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_213
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1f5 .. :try_end_213} :catch_240

    .line 1518
    move-object/from16 v23, v13

    .end local v13    # "keySEncoded":[B
    .local v23, "keySEncoded":[B
    :try_start_215
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSet;
    :try_end_217
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_215 .. :try_end_217} :catch_234

    move-object/from16 v24, v15

    .end local v15    # "cSalt":[B
    .local v24, "cSalt":[B
    :try_start_219
    invoke-interface {v9, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    invoke-direct {v13, v15}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1519
    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v13}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1521
    const/16 v18, 0x1

    .line 1522
    .end local v10    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v10, v22

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    goto :goto_1f9

    .line 1547
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "cAttrSet":Z
    .end local v21    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v24    # "cSalt":[B
    .restart local v15    # "cSalt":[B
    :catch_234
    move-exception v0

    move-object/from16 v24, v15

    .end local v15    # "cSalt":[B
    .restart local v24    # "cSalt":[B
    goto/16 :goto_2d4

    .line 1512
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v9    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .local v10, "e":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    .restart local v18    # "cAttrSet":Z
    .restart local v21    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    :cond_239
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_24d

    .line 1547
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "cAttrSet":Z
    .end local v21    # "nm":Lcom/android/org/bouncycastle/asn1/DERBMPString;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_240
    move-exception v0

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto/16 :goto_2d4

    .line 1490
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v11, "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    .restart local v18    # "cAttrSet":Z
    :cond_247
    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .line 1525
    .end local v11    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    :goto_24d
    if-nez v18, :cond_291

    .line 1527
    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1529
    .local v9, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1530
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSubjectKeyId(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1531
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1533
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v9, v10

    .line 1535
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1536
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSet;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v11, v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1538
    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v9}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1541
    .end local v9    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_291
    new-instance v9, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    new-instance v13, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v13, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v9, v10, v11, v13}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1543
    .local v9, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1545
    invoke-virtual {v5, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_219 .. :try_end_2a7} :catch_2b5

    .line 1550
    move-object/from16 v9, p2

    move-object/from16 v1, v17

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v13, v23

    move-object/from16 v15, v24

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v9    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v18    # "cAttrSet":Z
    goto/16 :goto_17c

    .line 1547
    :catch_2b5
    move-exception v0

    goto :goto_2d4

    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v11    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2b7
    move-exception v0

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .end local v11    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_2d4

    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .local v10, "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2bf
    move-exception v0

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .end local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    goto :goto_2d4

    .end local v17    # "cs":Ljava/util/Enumeration;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .local v1, "cs":Ljava/util/Enumeration;
    .restart local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :catch_2c9
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .line 1549
    .end local v1    # "cs":Ljava/util/Enumeration;
    .end local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v17    # "cs":Ljava/util/Enumeration;
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    :goto_2d4
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

    .line 1553
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v17    # "cs":Ljava/util/Enumeration;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .restart local v1    # "cs":Ljava/util/Enumeration;
    .restart local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v11    # "ks":Ljava/util/Enumeration;
    .restart local v13    # "keySEncoded":[B
    .restart local v15    # "cSalt":[B
    :cond_2ed
    move-object/from16 v17, v1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v24, v15

    .end local v1    # "cs":Ljava/util/Enumeration;
    .end local v10    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v11    # "ks":Ljava/util/Enumeration;
    .end local v13    # "keySEncoded":[B
    .end local v15    # "cSalt":[B
    .restart local v17    # "cs":Ljava/util/Enumeration;
    .restart local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v20    # "ks":Ljava/util/Enumeration;
    .restart local v23    # "keySEncoded":[B
    .restart local v24    # "cSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 1554
    .end local v17    # "cs":Ljava/util/Enumeration;
    .restart local v1    # "cs":Ljava/util/Enumeration;
    :goto_2fd
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_340

    .line 1558
    :try_start_303
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1559
    .local v0, "certId":Ljava/lang/String;
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 1561
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    iget-object v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31a

    .line 1563
    goto :goto_2fd

    .line 1566
    :cond_31a
    invoke-direct {v8, v0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createSafeBag(Ljava/lang/String;Ljava/security/cert/Certificate;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v4

    .line 1568
    .local v4, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1570
    invoke-virtual {v5, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_324
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_303 .. :try_end_324} :catch_326

    .line 1575
    nop

    .end local v0    # "certId":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    goto :goto_2fd

    .line 1572
    :catch_326
    move-exception v0

    .line 1574
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1578
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_340
    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->getUsedCertificateSet()Ljava/util/Set;

    move-result-object v9

    .line 1580
    .local v9, "usedSet":Ljava/util/Set;
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 1581
    .end local v1    # "cs":Ljava/util/Enumeration;
    .local v10, "cs":Ljava/util/Enumeration;
    :goto_34a
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_40e

    .line 1585
    :try_start_350
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    .line 1586
    .local v0, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 1588
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_365

    .line 1590
    goto :goto_34a

    .line 1593
    :cond_365
    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_36c

    .line 1595
    goto :goto_34a

    .line 1598
    :cond_36c
    new-instance v3, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    sget-object v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 1600
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v4, v11}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1601
    .local v3, "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    new-instance v4, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1603
    .local v4, "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v11, v1, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v11, :cond_3d3

    .line 1605
    move-object v11, v1

    check-cast v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1606
    .local v11, "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v13

    .line 1608
    .local v13, "e":Ljava/util/Enumeration;
    :goto_38c
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_3cc

    .line 1610
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1616
    .local v15, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v17, v0

    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .local v17, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3a5

    .line 1618
    move-object/from16 v0, v17

    goto :goto_38c

    .line 1621
    :cond_3a5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1623
    .local v0, "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1624
    move-object/from16 v18, v1

    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .local v18, "cert":Ljava/security/cert/Certificate;
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSet;
    :try_end_3b1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_350 .. :try_end_3b1} :catch_3f2

    move-object/from16 v21, v5

    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .local v21, "doneCerts":Ljava/util/Hashtable;
    :try_start_3b3
    invoke-interface {v11, v15}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1625
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1626
    .end local v0    # "fSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v15    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v5, v21

    goto :goto_38c

    .line 1608
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .local v0, "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_3cc
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v21, v5

    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v21    # "doneCerts":Ljava/util/Hashtable;
    goto :goto_3d9

    .line 1603
    .end local v11    # "bagAttrs":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .restart local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v1    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_3d3
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v21, v5

    .line 1629
    .end local v0    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .restart local v18    # "cert":Ljava/security/cert/Certificate;
    .restart local v21    # "doneCerts":Ljava/util/Hashtable;
    :goto_3d9
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v11, v4}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v1, v5, v11}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 1631
    .local v0, "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_3ec
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3b3 .. :try_end_3ec} :catch_3f0

    .line 1636
    .end local v0    # "sBag":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v3    # "cBag":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v4    # "fName":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v17    # "certId":Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
    .end local v18    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v5, v21

    goto/16 :goto_34a

    .line 1633
    :catch_3f0
    move-exception v0

    goto :goto_3f5

    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :catch_3f2
    move-exception v0

    move-object/from16 v21, v5

    .line 1635
    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v21    # "doneCerts":Ljava/util/Hashtable;
    :goto_3f5
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

    .line 1639
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .restart local v5    # "doneCerts":Ljava/util/Hashtable;
    :cond_40e
    move-object/from16 v21, v5

    .end local v5    # "doneCerts":Ljava/util/Hashtable;
    .restart local v21    # "doneCerts":Ljava/util/Hashtable;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v11

    .line 1640
    .local v11, "certSeqEncoded":[B
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v3, v6

    move-object/from16 v4, p2

    move-object/from16 v13, v21

    .end local v21    # "doneCerts":Ljava/util/Hashtable;
    .local v13, "doneCerts":Ljava/util/Hashtable;
    move-object v15, v6

    .end local v6    # "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v15, "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v6

    .line 1641
    .local v6, "certBytes":[B
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v15, v2}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object/from16 v17, v0

    .line 1643
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

    .line 1646
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    move-object v5, v0

    .line 1649
    .local v5, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;)V

    move-object v4, v0

    .line 1651
    .local v4, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    const-string v0, "BER"

    if-eqz p3, :cond_45e

    move-object v1, v12

    goto :goto_45f

    :cond_45e
    move-object v1, v0

    :goto_45f
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    .line 1653
    .local v3, "pkg":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v18, v0

    new-instance v0, Lcom/android/org/bouncycastle/asn1/BEROctetString;

    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    move-object v2, v1

    .line 1658
    .local v2, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    iget v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    new-array v1, v0, [B

    .line 1660
    .local v1, "mSalt":[B
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1662
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v21

    .line 1668
    .local v21, "data":[B
    :try_start_485
    iget-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0
    :try_end_48b
    .catch Ljava/lang/Exception; {:try_start_485 .. :try_end_48b} :catch_4eb

    move-object/from16 v22, v4

    .end local v4    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .local v22, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    :try_start_48d
    iget v4, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_48d .. :try_end_48f} :catch_4de

    const/16 v25, 0x0

    move-object/from16 v26, v1

    .end local v1    # "mSalt":[B
    .local v26, "mSalt":[B
    move-object/from16 v1, p0

    move-object/from16 v27, v2

    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v27, "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    move-object v2, v0

    move-object/from16 v28, v3

    .end local v3    # "pkg":[B
    .local v28, "pkg":[B
    move-object/from16 v3, v26

    move-object/from16 v29, v5

    .end local v5    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .local v29, "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    move-object/from16 v5, p2

    move-object/from16 v30, v6

    .end local v6    # "certBytes":[B
    .local v30, "certBytes":[B
    move/from16 v6, v25

    move-object/from16 v25, v7

    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v25, "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v7, v21

    :try_start_4a8
    invoke-direct/range {v1 .. v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->calculatePbeMac(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v0

    .line 1670
    .local v0, "res":[B
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v2, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1672
    .local v1, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    new-instance v2, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    iget v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I
    :try_end_4b7
    .catch Ljava/lang/Exception; {:try_start_4a8 .. :try_end_4b7} :catch_4d6

    move-object/from16 v4, v26

    .end local v26    # "mSalt":[B
    .local v4, "mSalt":[B
    :try_start_4b9
    invoke-direct {v2, v1, v4, v3}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;-><init>(Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_4b9 .. :try_end_4bc} :catch_4d0

    move-object v0, v2

    .line 1677
    .end local v1    # "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    .local v0, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    nop

    .line 1682
    new-instance v1, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v2, v27

    .end local v27    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-direct {v1, v2, v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;-><init>(Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;Lcom/android/org/bouncycastle/asn1/pkcs/MacData;)V

    .line 1684
    .local v1, "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_4c8

    goto :goto_4ca

    :cond_4c8
    move-object/from16 v12, v18

    :goto_4ca
    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v12}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1685
    return-void

    .line 1674
    .end local v0    # "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    .end local v1    # "pfx":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v27    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_4d0
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v2, v27

    .end local v27    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    goto :goto_4f9

    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "mSalt":[B
    .restart local v26    # "mSalt":[B
    .restart local v27    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    :catch_4d6
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    move-object/from16 v2, v27

    .end local v26    # "mSalt":[B
    .end local v27    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v4    # "mSalt":[B
    goto :goto_4f9

    .end local v4    # "mSalt":[B
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v28    # "pkg":[B
    .end local v29    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v30    # "certBytes":[B
    .local v1, "mSalt":[B
    .restart local v3    # "pkg":[B
    .restart local v5    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v6    # "certBytes":[B
    .restart local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_4de
    move-exception v0

    move-object v4, v1

    move-object/from16 v28, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v25, v7

    move-object/from16 v3, p1

    .end local v1    # "mSalt":[B
    .end local v3    # "pkg":[B
    .end local v5    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v6    # "certBytes":[B
    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v4    # "mSalt":[B
    .restart local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v28    # "pkg":[B
    .restart local v29    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v30    # "certBytes":[B
    goto :goto_4f9

    .end local v22    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v28    # "pkg":[B
    .end local v29    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v30    # "certBytes":[B
    .restart local v1    # "mSalt":[B
    .restart local v3    # "pkg":[B
    .local v4, "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v5    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v6    # "certBytes":[B
    .restart local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_4eb
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v22, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v25, v7

    move-object/from16 v3, p1

    move-object v4, v1

    .line 1676
    .end local v1    # "mSalt":[B
    .end local v3    # "pkg":[B
    .end local v5    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v6    # "certBytes":[B
    .end local v7    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .local v0, "e":Ljava/lang/Exception;
    .local v4, "mSalt":[B
    .restart local v22    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .restart local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v28    # "pkg":[B
    .restart local v29    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v30    # "certBytes":[B
    :goto_4f9
    new-instance v1, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1318
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "mainInfo":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v4    # "mSalt":[B
    .end local v9    # "usedSet":Ljava/util/Set;
    .end local v10    # "cs":Ljava/util/Enumeration;
    .end local v11    # "certSeqEncoded":[B
    .end local v13    # "doneCerts":Ljava/util/Hashtable;
    .end local v14    # "keyString":Lcom/android/org/bouncycastle/asn1/BEROctetString;
    .end local v15    # "cAlgId":Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v16    # "cParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v17    # "cInfo":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v19    # "keyS":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v20    # "ks":Ljava/util/Enumeration;
    .end local v21    # "data":[B
    .end local v22    # "auth":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v23    # "keySEncoded":[B
    .end local v24    # "cSalt":[B
    .end local v25    # "certSeq":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v28    # "pkg":[B
    .end local v29    # "info":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v30    # "certBytes":[B
    :cond_514
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDigest(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 6
    .param p0, "spki"    # Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 242
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 243
    .local v0, "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 245
    .local v1, "resBuf":[B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    .line 246
    .local v2, "bytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 247
    invoke-interface {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 248
    return-object v1
.end method

.method private blacklist getUsedCertificateSet()Ljava/util/Set;
    .registers 7

    .line 1751
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1753
    .local v0, "usedSet":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1755
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1757
    .local v2, "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1759
    .local v3, "certs":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v3

    if-eq v4, v5, :cond_27

    .line 1761
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1759
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1763
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v4    # "i":I
    :cond_27
    goto :goto_b

    .line 1765
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

    .line 1767
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1769
    .restart local v2    # "alias":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 1771
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1772
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_2e

    .line 1774
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_42
    return-object v0
.end method

.method private blacklist validateIterationCount(Ljava/math/BigInteger;)I
    .registers 7
    .param p1, "i"    # Ljava/math/BigInteger;

    .line 1239
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 1241
    .local v0, "count":I
    if-ltz v0, :cond_39

    .line 1246
    const-string v1, "com.android.org.bouncycastle.pkcs12.max_it_count"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Properties;->asBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1247
    .local v1, "maxValue":Ljava/math/BigInteger;
    if-eqz v1, :cond_38

    .line 1249
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_15

    goto :goto_38

    .line 1251
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

    .line 1255
    :cond_38
    :goto_38
    return v0

    .line 1243
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

    .line 685
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 686
    .local v0, "algorithm":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x2

    .line 688
    .local v1, "mode":I
    :goto_9
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    const-string v3, "exception decrypting data - "

    if-eqz v2, :cond_5d

    .line 690
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v2

    .line 693
    .local v2, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    :try_start_1b
    new-instance v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 694
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v5

    .line 695
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 696
    .local v4, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v5, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 698
    .local v5, "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 700
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6, v1, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 701
    invoke-virtual {v6, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_42} :catch_43

    return-object v3

    .line 703
    .end local v4    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    :catch_43
    move-exception v4

    .line 705
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

    .line 708
    .end local v2    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5d
    sget-object v2, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 712
    :try_start_65
    invoke-direct {p0, v1, p3, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 714
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, p5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_6e

    return-object v3

    .line 716
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_6e
    move-exception v2

    .line 718
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

    .line 723
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

.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .registers 5

    .line 259
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 261
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 262
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 264
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 267
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 268
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 270
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 271
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 273
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 277
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 283
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

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 297
    .local v0, "k":Ljava/security/Key;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 299
    .local v1, "c":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_20

    .line 301
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_20
    if-eqz v0, :cond_45

    .line 306
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 309
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/security/cert/Certificate;

    .line 311
    :cond_35
    if-eqz v1, :cond_45

    .line 313
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .end local v2    # "id":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 324
    if-eqz p1, :cond_2a

    .line 329
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 334
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_29

    .line 336
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 337
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 339
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    goto :goto_29

    .line 343
    :cond_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/Certificate;

    .line 347
    .end local v1    # "id":Ljava/lang/String;
    :cond_29
    :goto_29
    return-object v0

    .line 326
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 353
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 354
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 356
    .local v1, "k":Ljava/util/Enumeration;
    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 358
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 359
    .local v2, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 363
    return-object v3

    .line 365
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_25
    goto :goto_c

    .line 367
    :cond_26
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 370
    :goto_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 372
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 373
    .restart local v2    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    .restart local v3    # "ta":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 377
    return-object v3

    .line 379
    .end local v2    # "tc":Ljava/security/cert/Certificate;
    .end local v3    # "ta":Ljava/lang/String;
    :cond_4b
    goto :goto_32

    .line 381
    :cond_4c
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 13
    .param p1, "alias"    # Ljava/lang/String;

    .line 387
    if-eqz p1, :cond_ac

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 394
    return-object v1

    .line 397
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 399
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_ab

    .line 401
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 403
    .local v1, "cs":Ljava/util/Vector;
    :goto_15
    if-eqz v0, :cond_95

    .line 405
    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 406
    .local v2, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 408
    .local v3, "nextC":Ljava/security/cert/Certificate;
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 409
    .local v4, "akiBytes":[B
    if-eqz v4, :cond_47

    .line 411
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    .line 412
    .local v5, "akiValue":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v6

    .line 414
    .local v6, "aki":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 415
    .local v7, "keyID":[B
    if-eqz v7, :cond_47

    .line 417
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v9, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-direct {v9, p0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Ljava/security/cert/Certificate;

    .line 421
    .end local v5    # "akiValue":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "aki":Lcom/android/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v7    # "keyID":[B
    :cond_47
    if-nez v3, :cond_84

    .line 426
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    .line 427
    .local v5, "i":Ljava/security/Principal;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    .line 429
    .local v6, "s":Ljava/security/Principal;
    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 431
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 433
    .local v7, "e":Ljava/util/Enumeration;
    :goto_5d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 435
    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 436
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    .line 437
    .local v9, "sub":Ljava/security/Principal;
    invoke-interface {v9, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_83

    .line 441
    :try_start_79
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_82

    .line 442
    move-object v3, v8

    .line 443
    goto :goto_84

    .line 445
    :catch_82
    move-exception v10

    .line 450
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v9    # "sub":Ljava/security/Principal;
    :cond_83
    goto :goto_5d

    .line 454
    .end local v5    # "i":Ljava/security/Principal;
    .end local v6    # "s":Ljava/security/Principal;
    .end local v7    # "e":Ljava/util/Enumeration;
    :cond_84
    :goto_84
    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 456
    const/4 v0, 0x0

    goto :goto_94

    .line 460
    :cond_8c
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 461
    if-eq v3, v0, :cond_93

    .line 463
    move-object v0, v3

    goto :goto_94

    .line 467
    :cond_93
    const/4 v0, 0x0

    .line 470
    .end local v2    # "x509c":Ljava/security/cert/X509Certificate;
    .end local v3    # "nextC":Ljava/security/cert/Certificate;
    .end local v4    # "akiBytes":[B
    :goto_94
    goto :goto_15

    .line 472
    :cond_95
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    .line 474
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9c
    array-length v4, v2

    if-eq v3, v4, :cond_aa

    .line 476
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    aput-object v4, v2, v3

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 479
    .end local v3    # "i":I
    :cond_aa
    return-object v2

    .line 482
    .end local v1    # "cs":Ljava/util/Vector;
    .end local v2    # "certChain":[Ljava/security/cert/Certificate;
    :cond_ab
    return-object v1

    .line 389
    .end local v0    # "c":Ljava/security/cert/Certificate;
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getCertificateChain."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 487
    if-eqz p1, :cond_1a

    .line 491
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 493
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    .line 489
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 503
    if-eqz p1, :cond_b

    .line 508
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0

    .line 505
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 514
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

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 520
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

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 41
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    if-nez v9, :cond_9

    .line 774
    return-void

    .line 777
    :cond_9
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v0

    .line 779
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 781
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v12

    .line 783
    .local v12, "head":I
    const/16 v0, 0x30

    if-ne v12, v0, :cond_751

    .line 788
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->reset()V

    .line 790
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v0

    .line 795
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :try_start_25
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_740

    move-object v14, v0

    .line 800
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    nop

    .line 802
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v15

    .line 803
    .local v15, "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v7, v0

    .line 804
    .local v7, "chain":Ljava/util/Vector;
    const/16 v16, 0x0

    .line 805
    .local v16, "unmarkedKey":Z
    const/16 v17, 0x0

    .line 807
    .local v17, "wrongPKCS12Zero":Z
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v0

    if-eqz v0, :cond_114

    .line 809
    if-eqz v10, :cond_10c

    .line 814
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lcom/android/org/bouncycastle/asn1/pkcs/MacData;

    move-result-object v18

    .line 815
    .local v18, "mData":Lcom/android/org/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getMac()Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v19

    .line 816
    .local v19, "dInfo":Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->macAlgorithm:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 817
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v6

    .line 818
    .local v6, "salt":[B
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v0

    iput v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->itCount:I

    .line 819
    array-length v0, v6

    iput v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->saltLength:I

    .line 821
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v20

    .line 825
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

    .line 826
    .local v0, "res":[B
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v1

    move-object v7, v1

    .line 828
    .local v7, "dig":[B
    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 830
    array-length v1, v10
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_92} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_dc

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    if-gtz v1, :cond_c4

    .line 836
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

    .line 838
    .end local v23    # "res":[B
    .local v1, "res":[B
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 843
    const/4 v0, 0x1

    move/from16 v17, v0

    .end local v17    # "wrongPKCS12Zero":Z
    .local v0, "wrongPKCS12Zero":Z
    goto :goto_d9

    .line 840
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

    .line 832
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

    .line 850
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

    .line 846
    :catch_d2
    move-exception v0

    goto :goto_10b

    .line 828
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v0    # "res":[B
    .restart local v7    # "dig":[B
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    :cond_d4
    move-object/from16 v23, v0

    move-object/from16 v22, v11

    move-object v11, v7

    .line 853
    .end local v0    # "res":[B
    .end local v7    # "dig":[B
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    :goto_d9
    move/from16 v7, v17

    goto :goto_119

    .line 850
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_dc
    move-exception v0

    move-object/from16 v22, v11

    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_ea

    .line 846
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    :catch_e0
    move-exception v0

    move-object/from16 v22, v11

    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    goto :goto_10b

    .line 850
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

    .line 852
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

    .line 846
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

    .line 848
    .end local v6    # "salt":[B
    .end local v7    # "chain":Ljava/util/Vector;
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v21    # "salt":[B
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    :goto_10b
    throw v0

    .line 811
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
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "no password supplied when one expected"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_114
    move-object v9, v7

    move-object/from16 v22, v11

    .end local v7    # "chain":Ljava/util/Vector;
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v9    # "chain":Ljava/util/Vector;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    move/from16 v7, v17

    .line 867
    .end local v17    # "wrongPKCS12Zero":Z
    .local v7, "wrongPKCS12Zero":Z
    :goto_119
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v11, 0x0

    invoke-direct {v0, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 868
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    .line 870
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const-string v6, "unmarked"

    const-string v5, "attempt to add existing attribute with different value"

    if-eqz v0, :cond_5c6

    .line 872
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 873
    .local v0, "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v17

    .line 874
    .local v17, "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    .line 876
    .local v2, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14d
    array-length v11, v2

    if-eq v1, v11, :cond_5b6

    .line 878
    aget-object v11, v2, v1

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->data:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_2e8

    .line 880
    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    .line 881
    .local v3, "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v11

    .line 883
    .local v11, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/16 v20, 0x0

    move/from16 v4, v20

    .local v4, "j":I
    :goto_174
    move-object/from16 v21, v0

    .end local v0    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v21, "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-eq v4, v0, :cond_2d5

    .line 885
    invoke-virtual {v11, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v0

    .line 886
    .local v0, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v23, v3

    .end local v3    # "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v23, "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    move-object/from16 v24, v11

    .end local v11    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v24, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 888
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v3

    .line 889
    .local v3, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    move/from16 v25, v12

    .end local v12    # "head":I
    .local v25, "head":I
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v12

    invoke-virtual {v8, v11, v12, v10, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v11

    .line 894
    .local v11, "privKey":Ljava/security/PrivateKey;
    const/4 v12, 0x0

    .line 895
    .local v12, "alias":Ljava/lang/String;
    const/16 v26, 0x0

    .line 897
    .local v26, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v27

    if-eqz v27, :cond_260

    .line 899
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v27

    .line 900
    .local v27, "e":Ljava/util/Enumeration;
    :goto_1bb
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_257

    .line 902
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v3

    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .local v29, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    move-object/from16 v3, v28

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 903
    .local v3, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v28, v12

    const/4 v12, 0x0

    .end local v12    # "alias":Ljava/lang/String;
    .local v28, "alias":Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    move-object/from16 v12, v20

    check-cast v12, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 904
    .local v12, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v20, v13

    const/4 v13, 0x1

    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v20, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 905
    .local v13, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v19, 0x0

    .line 907
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v32

    if-lez v32, :cond_221

    .line 909
    move-object/from16 v32, v14

    const/4 v14, 0x0

    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v32, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v30

    move-object/from16 v14, v30

    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 911
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v14, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    move-object/from16 v30, v3

    .end local v3    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v30, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    instance-of v3, v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_21c

    .line 913
    move-object v3, v11

    check-cast v3, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 914
    .local v3, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v3, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v19

    .line 915
    .local v19, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v19, :cond_216

    .line 918
    move-object/from16 v34, v13

    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v34, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v19 .. v19}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v13

    if-eqz v13, :cond_210

    goto :goto_21e

    .line 920
    :cond_210
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 926
    .end local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_216
    move-object/from16 v34, v13

    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface {v3, v12, v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21e

    .line 911
    .end local v3    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v19    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .end local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_21c
    move-object/from16 v34, v13

    .line 931
    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :goto_21e
    move-object/from16 v19, v14

    goto :goto_227

    .line 907
    .end local v30    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .end local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v3, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v19, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_221
    move-object/from16 v30, v3

    move-object/from16 v34, v13

    move-object/from16 v32, v14

    .line 931
    .end local v3    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v30    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :goto_227
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_23e

    .line 933
    move-object/from16 v3, v19

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .end local v28    # "alias":Ljava/lang/String;
    .local v3, "alias":Ljava/lang/String;
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v13, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v12, v3

    goto :goto_24f

    .line 936
    .end local v3    # "alias":Ljava/lang/String;
    .restart local v28    # "alias":Ljava/lang/String;
    :cond_23e
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_24d

    .line 938
    move-object/from16 v26, v19

    check-cast v26, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v12, v28

    goto :goto_24f

    .line 936
    :cond_24d
    move-object/from16 v12, v28

    .line 940
    .end local v19    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v28    # "alias":Ljava/lang/String;
    .end local v30    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v34    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v12, "alias":Ljava/lang/String;
    :goto_24f
    move-object/from16 v13, v20

    move-object/from16 v3, v29

    move-object/from16 v14, v32

    goto/16 :goto_1bb

    .line 900
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v29    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v3, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_257
    move-object/from16 v29, v3

    move-object/from16 v28, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v28    # "alias":Ljava/lang/String;
    .restart local v29    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    goto :goto_267

    .line 897
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v27    # "e":Ljava/util/Enumeration;
    .end local v28    # "alias":Ljava/lang/String;
    .end local v29    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v12    # "alias":Ljava/lang/String;
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_260
    move-object/from16 v29, v3

    move-object v3, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .line 943
    .end local v3    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v29    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :goto_267
    if-eqz v26, :cond_284

    .line 945
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>([B)V

    .line 947
    .local v3, "name":Ljava/lang/String;
    if-nez v12, :cond_27e

    .line 949
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v13, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_283

    .line 953
    :cond_27e
    iget-object v13, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v13, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .end local v3    # "name":Ljava/lang/String;
    :goto_283
    goto :goto_28b

    .line 958
    :cond_284
    const/16 v16, 0x1

    .line 959
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v6, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 961
    .end local v11    # "privKey":Ljava/security/PrivateKey;
    .end local v12    # "alias":Ljava/lang/String;
    .end local v26    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v29    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :goto_28b
    goto :goto_2c5

    .line 962
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v12, "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_28c
    move/from16 v25, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v25    # "head":I
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v11, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_2a2

    .line 964
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2c5

    .line 968
    :cond_2a2
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

    .line 969
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 883
    .end local v0    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_2c5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v20

    move-object/from16 v0, v21

    move-object/from16 v3, v23

    move-object/from16 v11, v24

    move/from16 v12, v25

    move-object/from16 v14, v32

    goto/16 :goto_174

    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v23    # "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v24    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v3, "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v11, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_2d5
    move-object/from16 v23, v3

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .line 972
    .end local v3    # "authSafeContent":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v4    # "j":I
    .end local v11    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v25    # "head":I
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    move v12, v1

    move-object v13, v2

    move-object v2, v5

    move-object/from16 v36, v6

    move/from16 v24, v7

    goto/16 :goto_5a1

    .line 973
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v0, "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v12    # "head":I
    .restart local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_2e8
    move-object/from16 v21, v0

    move/from16 v25, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .end local v0    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v21    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v25    # "head":I
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->encryptedData:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_55c

    .line 975
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;

    move-result-object v0

    .line 976
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 977
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 976
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

    move-object/from16 v35, v5

    move v5, v7

    move-object/from16 v36, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->cryptData(ZLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v1

    .line 978
    .local v1, "octets":[B
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 980
    .local v2, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_32e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_551

    .line 982
    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    move-result-object v4

    .line 984
    .local v4, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_357

    .line 986
    invoke-virtual {v9, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v27, v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move/from16 v24, v7

    move-object/from16 v2, v35

    goto/16 :goto_540

    .line 988
    :cond_357
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs8ShroudedKeyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_44c

    .line 990
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v5

    .line 991
    .local v5, "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v11

    invoke-virtual {v8, v6, v11, v10, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->unwrapKey(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v6

    .line 996
    .local v6, "privKey":Ljava/security/PrivateKey;
    move-object v11, v6

    check-cast v11, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 997
    .local v11, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v23, 0x0

    .line 998
    .local v23, "alias":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1000
    .local v24, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v26

    move-object/from16 v37, v23

    .line 1001
    .end local v23    # "alias":Ljava/lang/String;
    .local v26, "e":Ljava/util/Enumeration;
    .local v37, "alias":Ljava/lang/String;
    :goto_388
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_424

    .line 1003
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v27, v0

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v27, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1004
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    move-object/from16 v14, v23

    check-cast v14, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1005
    .local v14, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v23, v1

    const/4 v1, 0x1

    .end local v1    # "octets":[B
    .local v23, "octets":[B
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    move-object/from16 v1, v28

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    .line 1006
    .local v1, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v28, 0x0

    .line 1008
    .local v28, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v29

    if-lez v29, :cond_3eb

    .line 1010
    move-object/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v29, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1012
    .end local v28    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v11, v14}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    .line 1013
    .local v28, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v28, :cond_3df

    .line 1016
    move-object/from16 v31, v1

    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v31, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3d5

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    goto :goto_3e8

    .line 1018
    :cond_3d5
    new-instance v1, Ljava/io/IOException;

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v33, "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    .end local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3df
    move-object/from16 v31, v1

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v11, v14, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1028
    .end local v28    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_3e8
    move-object/from16 v28, v0

    goto :goto_3f3

    .line 1008
    .end local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v28, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_3eb
    move-object/from16 v29, v0

    move-object/from16 v31, v1

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    .line 1028
    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :goto_3f3
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_40b

    .line 1030
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    .end local v37    # "alias":Ljava/lang/String;
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v37, v0

    goto :goto_419

    .line 1033
    .end local v0    # "alias":Ljava/lang/String;
    .restart local v37    # "alias":Ljava/lang/String;
    :cond_40b
    sget-object v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_419

    .line 1035
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v24, v0

    .line 1037
    .end local v14    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v28    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_419
    :goto_419
    move-object/from16 v35, v2

    move-object/from16 v1, v23

    move-object/from16 v0, v27

    move-object/from16 v2, v33

    const/4 v14, 0x0

    goto/16 :goto_388

    .line 1039
    .end local v23    # "octets":[B
    .end local v27    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_424
    move-object/from16 v27, v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "octets":[B
    .restart local v27    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v0, Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1041
    .local v0, "name":Ljava/lang/String;
    move-object/from16 v1, v37

    .end local v37    # "alias":Ljava/lang/String;
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_443

    .line 1043
    iget-object v14, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v14, v0, v6}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_448

    .line 1047
    :cond_443
    iget-object v14, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v14, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "alias":Ljava/lang/String;
    .end local v5    # "eIn":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v6    # "privKey":Ljava/security/PrivateKey;
    .end local v11    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v24    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v26    # "e":Ljava/util/Enumeration;
    :goto_448
    move/from16 v24, v7

    goto/16 :goto_540

    .line 1050
    .end local v23    # "octets":[B
    .end local v27    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_44c
    move-object/from16 v27, v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move-object/from16 v2, v35

    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "octets":[B
    .restart local v27    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .restart local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyBag:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_51b

    .line 1052
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    .line 1053
    .local v0, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v0}, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 1058
    .local v1, "privKey":Ljava/security/PrivateKey;
    move-object v5, v1

    check-cast v5, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1059
    .local v5, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v6, 0x0

    .line 1060
    .local v6, "alias":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1062
    .local v11, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v14

    .line 1063
    .local v14, "e":Ljava/util/Enumeration;
    :goto_479
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v24

    if-eqz v24, :cond_4fc

    .line 1065
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v26, v0

    .end local v0    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v26, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v24 .. v24}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1066
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    move/from16 v24, v7

    const/4 v7, 0x0

    .end local v7    # "wrongPKCS12Zero":Z
    .local v24, "wrongPKCS12Zero":Z
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    .line 1067
    .local v7, "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    .line 1068
    .local v10, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    const/16 v28, 0x0

    .line 1070
    .restart local v28    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v29

    if-lez v29, :cond_4f0

    .line 1072
    move-object/from16 v29, v0

    const/4 v0, 0x0

    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1074
    .end local v28    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .local v0, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    invoke-interface {v5, v7}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v28

    .line 1075
    .local v28, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v28, :cond_4c9

    .line 1078
    move-object/from16 v31, v10

    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface/range {v28 .. v28}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_4c3

    goto :goto_4ce

    .line 1080
    :cond_4c3
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1086
    .end local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    :cond_4c9
    move-object/from16 v31, v10

    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-interface {v5, v7, v0}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1089
    :goto_4ce
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_4e3

    .line 1091
    move-object v10, v0

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1092
    iget-object v10, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v10, v6, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4f4

    .line 1094
    :cond_4e3
    sget-object v10, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_4f4

    .line 1096
    move-object v10, v0

    check-cast v10, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-object v11, v10

    .end local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v10, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    goto :goto_4f4

    .line 1070
    .end local v29    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .local v0, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v10, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .local v28, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4f0
    move-object/from16 v29, v0

    move-object/from16 v31, v10

    .line 1099
    .end local v0    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "aOid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v10    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .end local v28    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4f4
    :goto_4f4
    move-object/from16 v10, p2

    move/from16 v7, v24

    move-object/from16 v0, v26

    goto/16 :goto_479

    .line 1101
    .end local v24    # "wrongPKCS12Zero":Z
    .end local v26    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v0, "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .local v7, "wrongPKCS12Zero":Z
    :cond_4fc
    move-object/from16 v26, v0

    move/from16 v24, v7

    .end local v0    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v24    # "wrongPKCS12Zero":Z
    .restart local v26    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 1103
    .local v0, "name":Ljava/lang/String;
    if-nez v6, :cond_515

    .line 1105
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v7, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_51a

    .line 1109
    :cond_515
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v7, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "privKey":Ljava/security/PrivateKey;
    .end local v5    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v11    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v14    # "e":Ljava/util/Enumeration;
    .end local v26    # "kInfo":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_51a
    goto :goto_540

    .line 1114
    .end local v24    # "wrongPKCS12Zero":Z
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_51b
    move/from16 v24, v7

    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v24    # "wrongPKCS12Zero":Z
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

    .line 1115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    .end local v4    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_540
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, p2

    move-object/from16 v35, v2

    move-object/from16 v1, v23

    move/from16 v7, v24

    move-object/from16 v0, v27

    move-object/from16 v2, v33

    const/4 v14, 0x0

    goto/16 :goto_32e

    .end local v23    # "octets":[B
    .end local v24    # "wrongPKCS12Zero":Z
    .end local v27    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v33    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .local v1, "octets":[B
    .restart local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_551
    move-object/from16 v27, v0

    move-object/from16 v23, v1

    move-object/from16 v33, v2

    move/from16 v24, v7

    move-object/from16 v2, v35

    .line 1118
    .end local v0    # "d":Lcom/android/org/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v1    # "octets":[B
    .end local v2    # "seq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "j":I
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v24    # "wrongPKCS12Zero":Z
    goto :goto_5a1

    .line 1121
    .end local v12    # "i":I
    .end local v13    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v24    # "wrongPKCS12Zero":Z
    .local v1, "i":I
    .local v2, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "wrongPKCS12Zero":Z
    :cond_55c
    move v12, v1

    move-object v13, v2

    move-object v2, v5

    move-object/from16 v36, v6

    move/from16 v24, v7

    .end local v1    # "i":I
    .end local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .restart local v12    # "i":I
    .restart local v13    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v24    # "wrongPKCS12Zero":Z
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

    .line 1122
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

    .line 876
    :goto_5a1
    add-int/lit8 v1, v12, 0x1

    move-object/from16 v10, p2

    move-object v5, v2

    move-object v2, v13

    move-object/from16 v13, v20

    move-object/from16 v0, v21

    move/from16 v7, v24

    move/from16 v12, v25

    move-object/from16 v14, v32

    move-object/from16 v6, v36

    const/4 v11, 0x0

    .end local v12    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_14d

    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v24    # "wrongPKCS12Zero":Z
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v0, "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v7    # "wrongPKCS12Zero":Z
    .local v12, "head":I
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .local v14, "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_5b6
    move-object/from16 v21, v0

    move-object/from16 v36, v6

    move/from16 v24, v7

    move/from16 v25, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    move v12, v1

    move-object v13, v2

    move-object v2, v5

    .end local v0    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v1    # "i":I
    .end local v2    # "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7    # "wrongPKCS12Zero":Z
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v12, "i":I
    .local v13, "c":[Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v21    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .restart local v24    # "wrongPKCS12Zero":Z
    .restart local v25    # "head":I
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    goto :goto_5d1

    .line 870
    .end local v17    # "authSafe":Lcom/android/org/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v21    # "content":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v24    # "wrongPKCS12Zero":Z
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v7    # "wrongPKCS12Zero":Z
    .local v12, "head":I
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :cond_5c6
    move-object v2, v5

    move-object/from16 v36, v6

    move/from16 v24, v7

    move/from16 v25, v12

    move-object/from16 v20, v13

    move-object/from16 v32, v14

    .line 1127
    .end local v7    # "wrongPKCS12Zero":Z
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v14    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v24    # "wrongPKCS12Zero":Z
    .restart local v25    # "head":I
    .restart local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    :goto_5d1
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$1;)V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .line 1128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    .line 1129
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    .line 1131
    const/4 v0, 0x0

    move v1, v0

    .restart local v1    # "i":I
    :goto_5e9
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_73f

    .line 1133
    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;

    .line 1134
    .local v3, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;

    move-result-object v4

    .line 1136
    .local v4, "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertId()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v5, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->x509Certificate:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_722

    .line 1145
    :try_start_60a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 1146
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1147
    .local v0, "cIn":Ljava/io/ByteArrayInputStream;
    iget-object v5, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certFact:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5
    :try_end_61f
    .catch Ljava/lang/Exception; {:try_start_60a .. :try_end_61f} :catch_715

    move-object v0, v5

    .line 1152
    .local v0, "cert":Ljava/security/cert/Certificate;
    nop

    .line 1157
    const/4 v5, 0x0

    .line 1158
    .local v5, "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v6, 0x0

    .line 1160
    .restart local v6    # "alias":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    if-eqz v7, :cond_6af

    .line 1162
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 1163
    .local v7, "e":Ljava/util/Enumeration;
    :goto_631
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_6ac

    .line 1165
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    .line 1166
    .local v10, "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    .line 1167
    .local v12, "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    invoke-static {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v14

    .line 1169
    .local v14, "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    if-lez v17, :cond_6a7

    .line 1171
    invoke-virtual {v14, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 1172
    .local v11, "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    const/16 v17, 0x0

    .line 1174
    .local v17, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    instance-of v13, v0, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v13, :cond_689

    .line 1176
    move-object v13, v0

    check-cast v13, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1178
    .end local v17    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .local v13, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v13, v12}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v17

    .line 1179
    .local v17, "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    if-eqz v17, :cond_681

    .line 1182
    move-object/from16 v18, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v18, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_67b

    goto :goto_686

    .line 1184
    :cond_67b
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1190
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_681
    move-object/from16 v18, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    invoke-interface {v13, v12, v11}, Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 1194
    .end local v17    # "existing":Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    :goto_686
    move-object/from16 v17, v13

    goto :goto_68b

    .line 1174
    .end local v13    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v17, "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    :cond_689
    move-object/from16 v18, v3

    .line 1194
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_68b
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_friendlyName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_69b

    .line 1196
    move-object v3, v11

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERBMPString;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6a9

    .line 1198
    :cond_69b
    sget-object v3, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->pkcs_9_at_localKeyId:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_6a9

    .line 1200
    move-object v5, v11

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    goto :goto_6a9

    .line 1169
    .end local v11    # "attr":Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .end local v17    # "bagAttr":Lcom/android/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6a7
    move-object/from16 v18, v3

    .line 1203
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .end local v10    # "sq":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "oid":Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v14    # "attrSet":Lcom/android/org/bouncycastle/asn1/ASN1Set;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6a9
    :goto_6a9
    move-object/from16 v3, v18

    goto :goto_631

    .line 1163
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6ac
    move-object/from16 v18, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    goto :goto_6b1

    .line 1160
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_6af
    move-object/from16 v18, v3

    .line 1206
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :goto_6b1
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    if-eqz v16, :cond_6f2

    .line 1210
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6ef

    .line 1212
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

    .line 1214
    .local v3, "name":Ljava/lang/String;
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    move-object/from16 v10, v36

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v3, v11}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1216
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_70f

    .line 1210
    :cond_6ef
    move-object/from16 v10, v36

    goto :goto_70f

    .line 1223
    :cond_6f2
    move-object/from16 v10, v36

    if-eqz v5, :cond_708

    .line 1225
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 1227
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v7, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v7, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    .end local v3    # "name":Ljava/lang/String;
    :cond_708
    if-eqz v6, :cond_70f

    .line 1231
    iget-object v3, v8, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v3, v6, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1131
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v5    # "localId":Lcom/android/org/bouncycastle/asn1/ASN1OctetString;
    .end local v6    # "alias":Ljava/lang/String;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_70f
    :goto_70f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v36, v10

    goto/16 :goto_5e9

    .line 1149
    .local v3, "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    :catch_715
    move-exception v0

    move-object/from16 v18, v3

    .line 1151
    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1138
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_722
    move-object/from16 v18, v3

    .end local v3    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    .restart local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
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

    .line 1235
    .end local v1    # "i":I
    .end local v4    # "cb":Lcom/android/org/bouncycastle/asn1/pkcs/CertBag;
    .end local v18    # "b":Lcom/android/org/bouncycastle/asn1/pkcs/SafeBag;
    :cond_73f
    return-void

    .line 797
    .end local v9    # "chain":Ljava/util/Vector;
    .end local v15    # "info":Lcom/android/org/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v16    # "unmarkedKey":Z
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v24    # "wrongPKCS12Zero":Z
    .end local v25    # "head":I
    .end local v32    # "bag":Lcom/android/org/bouncycastle/asn1/pkcs/Pfx;
    .local v11, "bufIn":Ljava/io/BufferedInputStream;
    .local v12, "head":I
    .local v13, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    :catch_740
    move-exception v0

    move-object/from16 v22, v11

    move/from16 v25, v12

    move-object/from16 v20, v13

    .line 799
    .end local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v12    # "head":I
    .end local v13    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v25    # "head":I
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v20    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v22    # "bufIn":Ljava/io/BufferedInputStream;
    .end local v25    # "head":I
    .restart local v11    # "bufIn":Ljava/io/BufferedInputStream;
    .restart local v12    # "head":I
    :cond_751
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream does not represent a PKCS12 key store"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 533
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    return-void

    .line 530
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

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
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

    .line 553
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_47

    .line 558
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_13

    if-eqz p4, :cond_b

    goto :goto_13

    .line 560
    :cond_b
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 568
    :cond_1e
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    if-eqz p4, :cond_46

    .line 571
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    array-length v1, p4

    if-eq v0, v1, :cond_46

    .line 575
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;-><init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 578
    .end local v0    # "i":I
    :cond_46
    return-void

    .line 555
    :cond_47
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "PKCS12 does not support non-PrivateKeys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSize()I
    .registers 5

    .line 582
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 584
    .local v0, "tab":Ljava/util/Hashtable;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->certs:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 585
    .local v1, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 587
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cert"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 590
    :cond_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->keys:Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 591
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 593
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 594
    .local v2, "a":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_38

    .line 596
    const-string v3, "key"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .end local v2    # "a":Ljava/lang/String;
    :cond_38
    goto :goto_21

    .line 600
    :cond_39
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v2

    return v2
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1307
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1308
    return-void
.end method

.method public whitelist test-api engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1262
    if-eqz p1, :cond_87

    .line 1267
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-nez v0, :cond_2a

    instance-of v0, p1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    if-eqz v0, :cond_b

    goto :goto_2a

    .line 1269
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No support for \'param\' of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_2a
    :goto_2a
    instance-of v0, p1, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    if-eqz v0, :cond_32

    .line 1277
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    .local v0, "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    goto :goto_49

    .line 1281
    .end local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :cond_32
    new-instance v0, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;

    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 1282
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;-><init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;Z)V

    .line 1286
    .restart local v0    # "bcParam":Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;
    :goto_49
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 1287
    .local v1, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v1, :cond_51

    .line 1289
    const/4 v2, 0x0

    .local v2, "password":[C
    goto :goto_5c

    .line 1291
    .end local v2    # "password":[C
    :cond_51
    instance-of v2, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v2, :cond_68

    .line 1293
    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1301
    .restart local v2    # "password":[C
    :goto_5c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/jcajce/PKCS12StoreParameter;->isForDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1302
    return-void

    .line 1297
    .end local v2    # "password":[C
    :cond_68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No support for protection parameter of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1264
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

    .line 254
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 255
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

    .line 610
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 613
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

    .line 615
    :try_start_10
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    .line 616
    .local v1, "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 617
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    .line 618
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->validateIterationCount(Ljava/math/BigInteger;)I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 620
    .local v5, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 622
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;

    invoke-direct {v7, p3, p4}, Lcom/android/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    .line 624
    .local v7, "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    invoke-virtual {v6, v4, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 627
    invoke-virtual {v6, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    return-object v2

    .line 629
    .end local v1    # "pbeParams":Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v5    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "key":Lcom/android/org/bouncycastle/jcajce/PKCS12Key;
    :cond_42
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 632
    invoke-direct {p0, v4, p3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->createCipher(I[CLcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 635
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, p2, v3, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_6d

    return-object v2

    .line 641
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :cond_55
    nop

    .line 643
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

    .line 638
    :catch_6d
    move-exception v1

    .line 640
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

    .line 653
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 658
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_5
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 659
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    .line 660
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v3

    .line 661
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 663
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->helper:Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 665
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x3

    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 667
    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_31

    move-object v1, v4

    .line 672
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .local v1, "out":[B
    nop

    .line 674
    return-object v1

    .line 669
    .end local v1    # "out":[B
    :catch_31
    move-exception v1

    .line 671
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
