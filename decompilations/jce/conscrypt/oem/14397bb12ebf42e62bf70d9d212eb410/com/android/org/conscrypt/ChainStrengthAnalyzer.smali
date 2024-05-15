.class public final Lcom/android/org/conscrypt/ChainStrengthAnalyzer;
.super Ljava/lang/Object;
.source "ChainStrengthAnalyzer.java"


# static fields
.field private static final MIN_DSA_P_LEN_BITS:I = 0x400

.field private static final MIN_DSA_Q_LEN_BITS:I = 0xa0

.field private static final MIN_EC_FIELD_SIZE_BITS:I = 0xa0

.field private static final MIN_RSA_MODULUS_LEN_BITS:I = 0x400

.field private static final SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "1.2.840.113549.1.1.2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "1.2.840.113549.1.1.3"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "1.2.840.113549.1.1.4"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    .line 32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final check(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 61
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_10
    invoke-static {v0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_4

    .line 62
    :catch_14
    move-exception v2

    .line 63
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unacceptable certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 64
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 67
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_33
    return-void
.end method

.method public static final check([Ljava/security/cert/X509Certificate;)V
    .registers 6
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v2, 0x0

    array-length v3, p0

    :goto_2
    if-ge v2, v3, :cond_2b

    aget-object v0, p0, v2

    .line 50
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_6
    invoke-static {v0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_9} :catch_c

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 51
    :catch_c
    move-exception v1

    .line 52
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unacceptable certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_2b
    return-void
.end method

.method public static final checkCert(Ljava/security/cert/X509Certificate;)V
    .registers 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkKeyLength(Ljava/security/cert/X509Certificate;)V

    .line 71
    invoke-static {p0}, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V

    .line 72
    return-void
.end method

.method private static checkKeyLength(Ljava/security/cert/X509Certificate;)V
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x400

    const/16 v6, 0xa0

    .line 75
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 76
    .local v3, "pubkey":Ljava/lang/Object;
    instance-of v5, v3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_21

    .line 77
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 78
    .local v1, "modulusLength":I
    if-ge v1, v7, :cond_92

    .line 79
    new-instance v5, Ljava/security/cert/CertificateException;

    .line 80
    const-string/jumbo v6, "RSA modulus is < 1024 bits"

    .line 79
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    .end local v1    # "modulusLength":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_21
    instance-of v5, v3, Ljava/security/interfaces/ECPublicKey;

    if-eqz v5, :cond_42

    .line 84
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 85
    .local v0, "fieldSizeBits":I
    if-ge v0, v6, :cond_92

    .line 86
    new-instance v5, Ljava/security/cert/CertificateException;

    .line 87
    const-string/jumbo v6, "EC key field size is < 160 bits"

    .line 86
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v0    # "fieldSizeBits":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_42
    instance-of v5, v3, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_70

    move-object v5, v3

    .line 90
    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 91
    .local v2, "pLength":I
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    .end local v3    # "pubkey":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 92
    .local v4, "qLength":I
    if-lt v2, v7, :cond_67

    if-ge v4, v6, :cond_92

    .line 93
    :cond_67
    new-instance v5, Ljava/security/cert/CertificateException;

    .line 94
    const-string/jumbo v6, "DSA key length is < (1024, 160) bits"

    .line 93
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    .end local v2    # "pLength":I
    .end local v4    # "qLength":I
    .restart local v3    # "pubkey":Ljava/lang/Object;
    :cond_70
    new-instance v5, Ljava/security/cert/CertificateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rejecting unknown key class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    .end local v3    # "pubkey":Ljava/lang/Object;
    :cond_92
    return-void
.end method

.method private static checkSignatureAlgorithm(Ljava/security/cert/X509Certificate;)V
    .registers 7
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "oid":Ljava/lang/String;
    sget-object v3, Lcom/android/org/conscrypt/ChainStrengthAnalyzer;->SIGNATURE_ALGORITHM_OID_BLACKLIST:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_8
    if-ge v2, v4, :cond_2f

    aget-object v0, v3, v2

    .line 107
    .local v0, "blacklisted":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 108
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Signature uses an insecure hash function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 111
    .end local v0    # "blacklisted":Ljava/lang/String;
    :cond_2f
    return-void
.end method
