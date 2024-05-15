.class public Lsun/security/x509/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field public static final ALG_ID:Ljava/lang/String; = "algorithm"

.field private static final AUTH_INFO_ACCESS_OID:Ljava/lang/String; = "1.3.6.1.5.5.7.1.1"

.field private static final BASIC_CONSTRAINT_OID:Ljava/lang/String; = "2.5.29.19"

.field private static final DOT:Ljava/lang/String; = "."

.field private static final EXTENDED_KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.37"

.field public static final INFO:Ljava/lang/String; = "info"

.field private static final ISSUER_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.18"

.field public static final ISSUER_DN:Ljava/lang/String; = "x509.info.issuer.dname"

.field private static final KEY_USAGE_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final NAME:Ljava/lang/String; = "x509"

.field private static final NUM_STANDARD_KEY_USAGE:I = 0x9

.field public static final PUBLIC_KEY:Ljava/lang/String; = "x509.info.key.value"

.field public static final SERIAL_ID:Ljava/lang/String; = "x509.info.serialNumber.number"

.field public static final SIG:Ljava/lang/String; = "x509.signature"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SIGNED_CERT:Ljava/lang/String; = "signed_cert"

.field public static final SIG_ALG:Ljava/lang/String; = "x509.algorithm"

.field private static final SUBJECT_ALT_NAME_OID:Ljava/lang/String; = "2.5.29.17"

.field public static final SUBJECT_DN:Ljava/lang/String; = "x509.info.subject.dname"

.field public static final VERSION:Ljava/lang/String; = "x509.info.version.number"

.field private static final serialVersionUID:J = -0x2ffbe8ab06f69c16L


# instance fields
.field protected algId:Lsun/security/x509/AlgorithmId;

.field private authInfoAccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lsun/security/x509/AccessDescription;",
            ">;"
        }
    .end annotation
.end field

.field private extKeyUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprints:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Lsun/security/x509/X509CertInfo;

.field private issuerAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private readOnly:Z

.field protected signature:[B

.field private signedCert:[B

.field private subjectAlternativeNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private verificationResult:Z

.field private verifiedProvider:Ljava/lang/String;

.field private verifiedPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1973
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1972
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 172
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .registers 6
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1973
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1972
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    :try_start_17
    invoke-direct {p0, p1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 311
    return-void

    .line 307
    :catch_1b
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 309
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/util/DerValue;[B)V
    .registers 7
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1973
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1972
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 325
    :try_start_17
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 330
    return-void

    .line 326
    :catch_1b
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 328
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lsun/security/x509/X509CertInfo;)V
    .registers 4
    .param p1, "certInfo"    # Lsun/security/x509/X509CertInfo;

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1973
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1972
    iput-object v0, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 293
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 294
    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .param p1, "certData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 122
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 123
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 124
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 125
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1973
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 1972
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->fingerprints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 188
    :try_start_17
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 193
    return-void

    .line 189
    :catch_20
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 191
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to initialize, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static byte2hex(BLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 2008
    const/16 v3, 0x10

    new-array v0, v3, [C

    .local v0, "hexChars":[C
    fill-array-data v0, :array_18

    .line 2010
    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v1, v3, 0x4

    .line 2011
    .local v1, "high":I
    and-int/lit8 v2, p0, 0xf

    .line 2012
    .local v2, "low":I
    aget-char v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2013
    aget-char v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2014
    return-void

    .line 2008
    :array_18
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .local p0, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v7, 0x1

    .line 1616
    const/4 v0, 0x0

    .line 1617
    .local v0, "mustClone":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nameEntry$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1618
    .local v1, "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, [B

    if-eqz v6, :cond_6

    .line 1620
    const/4 v0, 0x1

    goto :goto_6

    .line 1623
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_1c
    if-eqz v0, :cond_5a

    .line 1624
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    .local v5, "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1626
    .restart local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1627
    .local v4, "nameObject":Ljava/lang/Object;
    instance-of v6, v4, [B

    if-eqz v6, :cond_51

    .line 1629
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1630
    .local v3, "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v4, [B

    .end local v4    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1631
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1633
    .end local v3    # "nameEntryCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v4    # "nameObject":Ljava/lang/Object;
    :cond_51
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1636
    .end local v1    # "nameEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "nameObject":Ljava/lang/Object;
    :cond_55
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1638
    .end local v5    # "namesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    :cond_5a
    return-object p0
.end method

.method public static getEncodedInternal(Ljava/security/cert/Certificate;)[B
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1918
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_b

    .line 1919
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .end local p0    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    return-object v0

    .line 1921
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_b
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedKeyUsage(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 8
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1510
    :try_start_1
    const-string/jumbo v5, "2.5.29.37"

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1511
    .local v2, "ext":[B
    if-nez v2, :cond_b

    .line 1512
    return-object v6

    .line 1513
    :cond_b
    new-instance v4, Lsun/security/util/DerValue;

    invoke-direct {v4, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1514
    .local v4, "val":Lsun/security/util/DerValue;
    invoke-virtual {v4}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1517
    .local v0, "data":[B
    new-instance v1, Lsun/security/x509/ExtendedKeyUsageExtension;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v5, v0}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 1518
    .local v1, "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    invoke-virtual {v1}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_24

    move-result-object v5

    return-object v5

    .line 1519
    .end local v0    # "data":[B
    .end local v1    # "ekuExt":Lsun/security/x509/ExtendedKeyUsageExtension;
    .end local v2    # "ext":[B
    .end local v4    # "val":Lsun/security/util/DerValue;
    :catch_24
    move-exception v3

    .line 1520
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v5, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 10
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1988
    const-string/jumbo v4, ""

    .line 1990
    .local v4, "fingerPrint":Ljava/lang/String;
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 1991
    .local v3, "encCertInfo":[B
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1992
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 1993
    .local v1, "digest":[B
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1994
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    array-length v7, v1

    if-ge v5, v7, :cond_20

    .line 1995
    aget-byte v7, v1, v5

    invoke-static {v7, v0}, Lsun/security/x509/X509CertImpl;->byte2hex(BLjava/lang/StringBuffer;)V

    .line 1994
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1997
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_23} :catch_25
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_23} :catch_25

    move-result-object v4

    .line 2001
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "digest":[B
    .end local v3    # "encCertInfo":[B
    .end local v5    # "i":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :goto_24
    return-object v4

    .line 1998
    :catch_25
    move-exception v2

    .local v2, "e":Ljava/security/GeneralSecurityException;
    goto :goto_24
.end method

.method public static getIssuerAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1743
    :try_start_1
    const-string/jumbo v6, "2.5.29.18"

    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1744
    .local v1, "ext":[B
    if-nez v1, :cond_b

    .line 1745
    return-object v7

    .line 1748
    :cond_b
    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1749
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1752
    .local v0, "data":[B
    new-instance v3, Lsun/security/x509/IssuerAlternativeNameExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v6, v0}, Lsun/security/x509/IssuerAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2d

    .line 1757
    .local v3, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_start_1b
    const-string/jumbo v6, "issuer_name"

    .line 1756
    invoke-virtual {v3, v6}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_27

    move-result-object v4

    .line 1762
    .local v4, "names":Lsun/security/x509/GeneralNames;
    :try_start_22
    invoke-static {v4}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1758
    .end local v4    # "names":Lsun/security/x509/GeneralNames;
    :catch_27
    move-exception v2

    .line 1760
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2d

    move-result-object v6

    return-object v6

    .line 1763
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_2d
    move-exception v2

    .line 1764
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getIssuerX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1904
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    return-object v1

    .line 1905
    :catch_6
    move-exception v0

    .line 1906
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse issuer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/Collection;
    .registers 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1680
    :try_start_1
    const-string/jumbo v6, "2.5.29.17"

    invoke-virtual {p0, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1681
    .local v1, "ext":[B
    if-nez v1, :cond_b

    .line 1682
    return-object v7

    .line 1684
    :cond_b
    new-instance v5, Lsun/security/util/DerValue;

    invoke-direct {v5, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 1685
    .local v5, "val":Lsun/security/util/DerValue;
    invoke-virtual {v5}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    .line 1688
    .local v0, "data":[B
    new-instance v4, Lsun/security/x509/SubjectAlternativeNameExtension;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v0}, Lsun/security/x509/SubjectAlternativeNameExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2d

    .line 1694
    .local v4, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_start_1b
    const-string/jumbo v6, "subject_name"

    .line 1693
    invoke-virtual {v4, v6}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_21} :catch_27

    move-result-object v3

    .line 1699
    .local v3, "names":Lsun/security/x509/GeneralNames;
    :try_start_22
    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v6

    return-object v6

    .line 1695
    .end local v3    # "names":Lsun/security/x509/GeneralNames;
    :catch_27
    move-exception v2

    .line 1697
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2b} :catch_2d

    move-result-object v6

    return-object v6

    .line 1700
    .end local v0    # "data":[B
    .end local v1    # "ext":[B
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    .end local v5    # "val":Lsun/security/util/DerValue;
    :catch_2d
    move-exception v2

    .line 1701
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getSubjectX500Principal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1892
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Lsun/security/x509/X509CertImpl;->getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    return-object v1

    .line 1893
    :catch_6
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not parse subject"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getX500Principal(Ljava/security/cert/X509Certificate;Z)Ljavax/security/auth/x500/X500Principal;
    .registers 10
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "getIssuer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1865
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 1866
    .local v1, "encoded":[B
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 1867
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v6

    aget-object v3, v6, v7

    .line 1868
    .local v3, "tbsCert":Lsun/security/util/DerValue;
    iget-object v4, v3, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 1870
    .local v4, "tbsIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1872
    .local v5, "tmp":Lsun/security/util/DerValue;
    invoke-virtual {v5, v7}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1873
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1876
    :cond_21
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1877
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1878
    if-nez p1, :cond_33

    .line 1879
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1880
    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v5

    .line 1882
    :cond_33
    invoke-virtual {v5}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v2

    .line 1883
    .local v2, "principalBytes":[B
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v6, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v6
.end method

.method public static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1944
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 1945
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 1946
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isSelfSigned(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 4
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "sigProvider"    # Ljava/lang/String;

    .prologue
    .line 1957
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1959
    if-nez p1, :cond_11

    .line 1960
    :try_start_8
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1964
    :goto_f
    const/4 v1, 0x1

    return v1

    .line 1962
    :cond_11
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_f

    .line 1965
    :catch_19
    move-exception v0

    .line 1969
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private static makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;
    .registers 10
    .param p0, "names"    # Lsun/security/x509/GeneralNames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/GeneralNames;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1560
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1561
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    return-object v7

    .line 1563
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v6, "newNames":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p0}, Lsun/security/x509/GeneralNames;->names()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "gname$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/GeneralName;

    .line 1565
    .local v1, "gname":Lsun/security/x509/GeneralName;
    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v4

    .line 1566
    .local v4, "name":Lsun/security/x509/GeneralNameInterface;
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1567
    .local v5, "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    invoke-interface {v4}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_b0

    .line 1595
    :pswitch_40
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1597
    .local v0, "derOut":Lsun/security/util/DerOutputStream;
    :try_start_45
    invoke-interface {v4, v0}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_a1

    .line 1603
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :goto_4f
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 1570
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_57
    check-cast v4, Lsun/security/x509/RFC822Name;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/RFC822Name;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1573
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_61
    check-cast v4, Lsun/security/x509/DNSName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/DNSName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1576
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_6b
    check-cast v4, Lsun/security/x509/X500Name;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1579
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_75
    check-cast v4, Lsun/security/x509/URIName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/URIName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1583
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_7f
    :try_start_7f
    check-cast v4, Lsun/security/x509/IPAddressName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/IPAddressName;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_89

    goto :goto_4f

    .line 1584
    :catch_89
    move-exception v3

    .line 1586
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "IPAddress cannot be parsed"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1591
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :pswitch_93
    check-cast v4, Lsun/security/x509/OIDName;

    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual {v4}, Lsun/security/x509/OIDName;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1598
    .restart local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .restart local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    :catch_a1
    move-exception v3

    .line 1601
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "name cannot be encoded"

    invoke-direct {v7, v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1608
    .end local v0    # "derOut":Lsun/security/util/DerOutputStream;
    .end local v1    # "gname":Lsun/security/x509/GeneralName;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v5    # "nameEntry":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_ab
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    return-object v7

    .line 1568
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_57
        :pswitch_61
        :pswitch_40
        :pswitch_6b
        :pswitch_40
        :pswitch_75
        :pswitch_7f
        :pswitch_93
    .end packed-switch
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1790
    const/4 v0, 0x0

    .line 1788
    invoke-direct {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->parse(Lsun/security/util/DerValue;[B)V

    .line 1792
    return-void
.end method

.method private parse(Lsun/security/util/DerValue;[B)V
    .registers 10
    .param p1, "val"    # Lsun/security/util/DerValue;
    .param p2, "originalEncodedForm"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1809
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v2, :cond_12

    .line 1810
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 1811
    const-string/jumbo v3, "cannot over-write existing certificate"

    .line 1810
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1813
    :cond_12
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_1a

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_23

    .line 1814
    :cond_1a
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    .line 1815
    const-string/jumbo v3, "invalid DER-encoded certificate data"

    .line 1814
    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1820
    :cond_23
    if-eqz p2, :cond_6a

    .line 1819
    .end local p2    # "originalEncodedForm":[B
    :goto_25
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 1822
    const/4 v2, 0x3

    new-array v1, v2, [Lsun/security/util/DerValue;

    .line 1824
    .local v1, "seq":[Lsun/security/util/DerValue;
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1825
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1826
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1828
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_6f

    .line 1829
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signed overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1830
    iget-object v4, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    .line 1829
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1821
    .end local v1    # "seq":[Lsun/security/util/DerValue;
    .restart local p2    # "originalEncodedForm":[B
    :cond_6a
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object p2

    goto :goto_25

    .line 1832
    .end local p2    # "originalEncodedForm":[B
    .restart local v1    # "seq":[Lsun/security/util/DerValue;
    :cond_6f
    aget-object v2, v1, v3

    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v6, :cond_7e

    .line 1833
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields invalid"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1836
    :cond_7e
    aget-object v2, v1, v4

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 1837
    aget-object v2, v1, v5

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getBitString()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 1839
    aget-object v2, v1, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_a1

    .line 1840
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "algid field overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1842
    :cond_a1
    aget-object v2, v1, v5

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_b4

    .line 1843
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string/jumbo v3, "signed fields overrun"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1846
    :cond_b4
    new-instance v2, Lsun/security/x509/X509CertInfo;

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertInfo;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1849
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1850
    const-string/jumbo v3, "algorithmID.algorithm"

    .line 1849
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AlgorithmId;

    .line 1853
    .local v0, "infoSigAlg":Lsun/security/x509/AlgorithmId;
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v0}, Lsun/security/x509/AlgorithmId;->equals(Lsun/security/x509/AlgorithmId;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 1854
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Signature algorithm mismatch"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1855
    :cond_d9
    iput-boolean v4, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 1856
    return-void
.end method

.method public static toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .registers 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1932
    instance-of v0, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_7

    .line 1933
    check-cast p0, Lsun/security/x509/X509CertImpl;

    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    return-object p0

    .line 1935
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-static {p0}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v0

    return-object v0
.end method

.method public static verify(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/security/Provider;)V

    .line 524
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 619
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->checkValidity(Ljava/util/Date;)V

    .line 620
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 638
    const/4 v1, 0x0

    .line 640
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    :try_start_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    check-cast v1, Lsun/security/x509/CertificateValidity;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_17

    .line 644
    .local v1, "interval":Lsun/security/x509/CertificateValidity;
    if-nez v1, :cond_21

    .line 645
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Null validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    .end local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :catch_17
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    const-string/jumbo v3, "Incorrect validity period"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "interval":Lsun/security/x509/CertificateValidity;
    :cond_21
    invoke-virtual {v1, p1}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 647
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 756
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_e

    .line 757
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 760
    :cond_e
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 763
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    :cond_3a
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 768
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 770
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 771
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 772
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 786
    :goto_58
    return-void

    .line 774
    :cond_59
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->delete(Ljava/lang/String;)V

    goto :goto_58

    .line 776
    :cond_63
    const-string/jumbo v3, "algorithm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 777
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    goto :goto_58

    .line 778
    :cond_6f
    const-string/jumbo v3, "signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 779
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    goto :goto_58

    .line 780
    :cond_7b
    const-string/jumbo v3, "signed_cert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 781
    iput-object v4, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_58

    .line 783
    :cond_87
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or delete() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public derEncode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_d

    .line 361
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null certificate to encode"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_d
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 363
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 341
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v1, :cond_d

    .line 342
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    .line 343
    const-string/jumbo v2, "Null certificate to encode"

    .line 342
    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_d
    :try_start_d
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_19

    .line 349
    return-void

    .line 346
    :catch_19
    move-exception v0

    .line 347
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 661
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 663
    .local v4, "id":Ljava/lang/String;
    const-string/jumbo v5, "x509"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 664
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid root of attribute name, expected [x509], received ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 666
    const-string/jumbo v7, "]"

    .line 664
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 668
    :cond_34
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 669
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 671
    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 672
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_4f

    .line 673
    return-object v6

    .line 675
    :cond_4f
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_76

    .line 677
    :try_start_55
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_6b
    .catch Ljava/security/cert/CertificateException; {:try_start_55 .. :try_end_5e} :catch_60

    move-result-object v5

    return-object v5

    .line 680
    :catch_60
    move-exception v3

    .line 681
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 678
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catch_6b
    move-exception v2

    .line 679
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 684
    .end local v2    # "e":Ljava/io/IOException;
    :cond_76
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    return-object v5

    .line 686
    :cond_79
    const-string/jumbo v5, "algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 687
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    return-object v5

    .line 688
    :cond_85
    const-string/jumbo v5, "signature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 689
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v5, :cond_99

    .line 690
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 692
    :cond_99
    return-object v6

    .line 693
    :cond_9a
    const-string/jumbo v5, "signed_cert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    .line 694
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-eqz v5, :cond_ae

    .line 695
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 697
    :cond_ae
    return-object v6

    .line 699
    :cond_af
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Attribute name not recognized or get() not allowed for the same: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getAuthKeyId()Lsun/security/x509/KeyIdentifier;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1116
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 1117
    .local v0, "aki":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_12

    .line 1120
    :try_start_7
    const-string/jumbo v2, "key_id"

    .line 1119
    invoke-virtual {v0, v2}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/KeyIdentifier;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_11

    return-object v2

    .line 1121
    :catch_11
    move-exception v1

    .line 1123
    :cond_12
    return-object v3
.end method

.method public getAuthorityInfoAccessExtension()Lsun/security/x509/AuthorityInfoAccessExtension;
    .registers 2

    .prologue
    .line 1770
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthInfoAccess_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1769
    check-cast v0, Lsun/security/x509/AuthorityInfoAccessExtension;

    return-object v0
.end method

.method public getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .registers 2

    .prologue
    .line 1148
    sget-object v0, Lsun/security/x509/PKIXExtensions;->AuthorityKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1147
    check-cast v0, Lsun/security/x509/AuthorityKeyIdentifierExtension;

    return-object v0
.end method

.method public getBasicConstraints()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 1531
    :try_start_1
    sget-object v3, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v3}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1532
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_a

    .line 1533
    return v4

    .line 1535
    :cond_a
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    .line 1536
    .local v0, "certExt":Lsun/security/x509/BasicConstraintsExtension;
    if-nez v0, :cond_13

    .line 1537
    return v4

    .line 1539
    :cond_13
    const-string/jumbo v3, "is_ca"

    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1542
    const-string/jumbo v3, "path_len"

    .line 1541
    invoke-virtual {v0, v3}, Lsun/security/x509/BasicConstraintsExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_31

    move-result v3

    return v3

    .line 1544
    :cond_30
    return v4

    .line 1545
    .end local v0    # "certExt":Lsun/security/x509/BasicConstraintsExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    :catch_31
    move-exception v1

    .line 1546
    .local v1, "e":Ljava/lang/Exception;
    return v4
.end method

.method public getBasicConstraintsExtension()Lsun/security/x509/BasicConstraintsExtension;
    .registers 2

    .prologue
    .line 1158
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1157
    check-cast v0, Lsun/security/x509/BasicConstraintsExtension;

    return-object v0
.end method

.method public getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;
    .registers 2

    .prologue
    .line 1257
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CRLDistributionPoints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1256
    check-cast v0, Lsun/security/x509/CRLDistributionPointsExtension;

    return-object v0
.end method

.method public getCertificatePoliciesExtension()Lsun/security/x509/CertificatePoliciesExtension;
    .registers 2

    .prologue
    .line 1168
    sget-object v0, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1167
    check-cast v0, Lsun/security/x509/CertificatePoliciesExtension;

    return-object v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1287
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_6

    .line 1288
    return-object v7

    .line 1291
    :cond_6
    :try_start_6
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1292
    const-string/jumbo v6, "extensions"

    .line 1291
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;

    .line 1293
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_14

    .line 1294
    return-object v7

    .line 1296
    :cond_14
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1297
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1298
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1299
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_3f

    goto :goto_21

    .line 1303
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_3f
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    .line 1302
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_41
    return-object v3
.end method

.method public getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 794
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "x509.info"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 795
    const-string/jumbo v1, "x509.algorithm"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 796
    const-string/jumbo v1, "x509.signature"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 797
    const-string/jumbo v1, "x509.signed_cert"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 799
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v0, :cond_d

    .line 384
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    .line 385
    const-string/jumbo v1, "Null certificate to encode"

    .line 384
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_d
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    return-object v0
.end method

.method public declared-synchronized getExtendedKeyUsage()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 1488
    :try_start_2
    iget-boolean v1, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 1489
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_24

    monitor-exit p0

    return-object v1

    .line 1491
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_24

    move-result-object v0

    .line 1492
    .local v0, "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    if-nez v0, :cond_16

    monitor-exit p0

    .line 1493
    return-object v2

    .line 1496
    :cond_16
    :try_start_16
    invoke-virtual {v0}, Lsun/security/x509/ExtendedKeyUsageExtension;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1495
    iput-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;

    .line 1497
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->extKeyUsage:Ljava/util/List;
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v1

    .end local v0    # "ext":Lsun/security/x509/ExtendedKeyUsageExtension;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getExtendedKeyUsageExtension()Lsun/security/x509/ExtendedKeyUsageExtension;
    .registers 2

    .prologue
    .line 1178
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1177
    check-cast v0, Lsun/security/x509/ExtendedKeyUsageExtension;

    return-object v0
.end method

.method public getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .registers 11
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v8, 0x0

    .line 1347
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v6, :cond_6

    .line 1348
    return-object v8

    .line 1353
    :cond_6
    :try_start_6
    iget-object v6, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v7, "extensions"

    invoke-virtual {v6, v7}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_41

    .line 1357
    .local v4, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_16

    .line 1358
    return-object v8

    .line 1354
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_14
    move-exception v0

    .line 1355
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v8

    .line 1360
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsun/security/x509/CertificateExtensions;->getExtension(Ljava/lang/String;)Lsun/security/x509/Extension;

    move-result-object v1

    .line 1361
    .local v1, "ex":Lsun/security/x509/Extension;
    if-eqz v1, :cond_21

    .line 1362
    return-object v1

    .line 1364
    :cond_21
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ex2$iterator":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/x509/Extension;

    .line 1365
    .local v2, "ex2":Lsun/security/x509/Extension;
    invoke-virtual {v2}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6, p1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3c} :catch_41

    move-result v6

    if-eqz v6, :cond_29

    .line 1367
    return-object v2

    .line 1371
    .end local v2    # "ex2":Lsun/security/x509/Extension;
    :cond_40
    return-object v8

    .line 1373
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v3    # "ex2$iterator":Ljava/util/Iterator;
    .end local v4    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_41
    move-exception v5

    .line 1374
    .local v5, "ioe":Ljava/io/IOException;
    return-object v8
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 17
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x0

    .line 1407
    :try_start_1
    new-instance v9, Lsun/security/util/ObjectIdentifier;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 1408
    .local v9, "findOID":Lsun/security/util/ObjectIdentifier;
    invoke-static {v9}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, "extAlias":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1410
    .local v1, "certExt":Lsun/security/x509/Extension;
    iget-object v12, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1411
    const-string/jumbo v13, "extensions"

    .line 1410
    invoke-virtual {v12, v13}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/x509/CertificateExtensions;

    .line 1413
    .local v8, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v6, :cond_4f

    .line 1415
    if-nez v8, :cond_1d

    .line 1416
    return-object v14

    .line 1419
    :cond_1d
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "ex$iterator":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/Extension;

    .line 1420
    .local v4, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v4}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v10

    .line 1421
    .local v10, "inCertOID":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v10, v9}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1422
    move-object v1, v4

    .line 1433
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    .end local v4    # "ex":Lsun/security/x509/Extension;
    .end local v5    # "ex$iterator":Ljava/util/Iterator;
    .end local v10    # "inCertOID":Lsun/security/util/ObjectIdentifier;
    :cond_3c
    :goto_3c
    if-nez v1, :cond_58

    .line 1434
    if-eqz v8, :cond_4c

    .line 1435
    invoke-virtual {v8}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_6c

    .line 1437
    :cond_4c
    if-nez v1, :cond_58

    .line 1438
    return-object v14

    .line 1428
    .restart local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_4f
    :try_start_4f
    invoke-virtual {p0, v6}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lsun/security/x509/Extension;

    move-object v1, v0
    :try_end_57
    .catch Ljava/security/cert/CertificateException; {:try_start_4f .. :try_end_57} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_6c

    .local v1, "certExt":Lsun/security/x509/Extension;
    goto :goto_3c

    .line 1441
    .end local v1    # "certExt":Lsun/security/x509/Extension;
    :cond_58
    :try_start_58
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionValue()[B

    move-result-object v7

    .line 1442
    .local v7, "extData":[B
    if-nez v7, :cond_5f

    .line 1443
    return-object v14

    .line 1445
    :cond_5f
    new-instance v11, Lsun/security/util/DerOutputStream;

    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 1446
    .local v11, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {v11, v7}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 1447
    invoke-virtual {v11}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6a} :catch_6c

    move-result-object v12

    return-object v12

    .line 1448
    .end local v6    # "extAlias":Ljava/lang/String;
    .end local v7    # "extData":[B
    .end local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .end local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    .end local v11    # "out":Lsun/security/util/DerOutputStream;
    :catch_6c
    move-exception v2

    .line 1449
    .local v2, "e":Ljava/lang/Exception;
    return-object v14

    .line 1429
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "certExt":Lsun/security/x509/Extension;
    .restart local v6    # "extAlias":Ljava/lang/String;
    .restart local v8    # "exts":Lsun/security/x509/CertificateExtensions;
    .restart local v9    # "findOID":Lsun/security/util/ObjectIdentifier;
    :catch_6e
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    goto :goto_3c
.end method

.method public getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    .registers 2

    .prologue
    .line 1188
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1187
    check-cast v0, Lsun/security/x509/IssuerAlternativeNameExtension;

    return-object v0
.end method

.method public declared-synchronized getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1714
    :try_start_2
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_12

    .line 1715
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_32

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 1718
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getIssuerAlternativeNameExtension()Lsun/security/x509/IssuerAlternativeNameExtension;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_32

    move-result-object v1

    .line 1719
    .local v1, "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    if-nez v1, :cond_1a

    monitor-exit p0

    .line 1720
    return-object v4

    .line 1725
    :cond_1a
    :try_start_1a
    const-string/jumbo v3, "issuer_name"

    .line 1724
    invoke-virtual {v1, v3}, Lsun/security/x509/IssuerAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_2b
    .catchall {:try_start_1a .. :try_end_20} :catchall_32

    move-result-object v2

    .line 1730
    .local v2, "names":Lsun/security/x509/GeneralNames;
    :try_start_21
    invoke-static {v2}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;

    .line 1731
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->issuerAlternativeNames:Ljava/util/Collection;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_32

    monitor-exit p0

    return-object v3

    .line 1726
    .end local v2    # "names":Lsun/security/x509/GeneralNames;
    :catch_2b
    move-exception v0

    .line 1728
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_32

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "issuerAltNameExt":Lsun/security/x509/IssuerAlternativeNameExtension;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 941
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 942
    return-object v4

    .line 944
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "issuer.dname"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 946
    .local v1, "issuer":Ljava/security/Principal;
    return-object v1

    .line 947
    .end local v1    # "issuer":Ljava/security/Principal;
    :catch_12
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerUniqueID()[Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1080
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 1081
    return-object v4

    .line 1083
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1084
    const-string/jumbo v3, "issuerID"

    .line 1083
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1085
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_14

    .line 1086
    return-object v4

    .line 1088
    :cond_14
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    .line 1089
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_19
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 958
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 959
    return-object v4

    .line 962
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 963
    const-string/jumbo v3, "issuer.x500principal"

    .line 962
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 965
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    .line 966
    .end local v1    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :catch_12
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getKeyUsage()[Z
    .registers 10

    .prologue
    const/16 v6, 0x9

    const/4 v8, 0x0

    .line 1460
    :try_start_3
    sget-object v5, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-static {v5}, Lsun/security/x509/OIDMap;->getName(Lsun/security/util/ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    .line 1461
    .local v2, "extAlias":Ljava/lang/String;
    if-nez v2, :cond_c

    .line 1462
    return-object v8

    .line 1464
    :cond_c
    invoke-virtual {p0, v2}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/KeyUsageExtension;

    .line 1465
    .local v0, "certExt":Lsun/security/x509/KeyUsageExtension;
    if-nez v0, :cond_15

    .line 1466
    return-object v8

    .line 1468
    :cond_15
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v3

    .line 1469
    .local v3, "ret":[Z
    array-length v5, v3

    if-ge v5, v6, :cond_27

    .line 1470
    const/16 v5, 0x9

    new-array v4, v5, [Z

    .line 1471
    .local v4, "usageBits":[Z
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_28

    .line 1472
    move-object v3, v4

    .line 1474
    .end local v4    # "usageBits":[Z
    :cond_27
    return-object v3

    .line 1475
    .end local v0    # "certExt":Lsun/security/x509/KeyUsageExtension;
    .end local v2    # "extAlias":Ljava/lang/String;
    .end local v3    # "ret":[Z
    :catch_28
    move-exception v1

    .line 1476
    .local v1, "e":Ljava/lang/Exception;
    return-object v8
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 806
    const-string/jumbo v0, "x509"

    return-object v0
.end method

.method public getNameConstraintsExtension()Lsun/security/x509/NameConstraintsExtension;
    .registers 2

    .prologue
    .line 1197
    sget-object v0, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1196
    check-cast v0, Lsun/security/x509/NameConstraintsExtension;

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1317
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v5, :cond_6

    .line 1318
    return-object v7

    .line 1321
    :cond_6
    :try_start_6
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1322
    const-string/jumbo v6, "extensions"

    .line 1321
    invoke-virtual {v5, v6}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/CertificateExtensions;

    .line 1323
    .local v4, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v4, :cond_14

    .line 1324
    return-object v7

    .line 1326
    :cond_14
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 1327
    .local v3, "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getAllExtensions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ex$iterator":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/Extension;

    .line 1328
    .local v1, "ex":Lsun/security/x509/Extension;
    invoke-virtual {v1}, Lsun/security/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_21

    .line 1329
    invoke-virtual {v1}, Lsun/security/x509/Extension;->getExtensionId()Lsun/security/util/ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1334
    .end local v1    # "ex":Lsun/security/x509/Extension;
    .end local v2    # "ex$iterator":Ljava/util/Iterator;
    .end local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_3f
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    return-object v7

    .line 1332
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ex$iterator":Ljava/util/Iterator;
    .restart local v3    # "extSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "exts":Lsun/security/x509/CertificateExtensions;
    :cond_41
    invoke-virtual {v4}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4c} :catch_3f

    .line 1333
    return-object v3
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 994
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 995
    return-object v4

    .line 997
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity.notAfter"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 999
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 1000
    .end local v0    # "d":Ljava/util/Date;
    :catch_12
    move-exception v1

    .line 1001
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 977
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 978
    return-object v4

    .line 980
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "validity.notBefore"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 982
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 983
    .end local v0    # "d":Ljava/util/Date;
    :catch_12
    move-exception v1

    .line 984
    .local v1, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getPolicyConstraintsExtension()Lsun/security/x509/PolicyConstraintsExtension;
    .registers 2

    .prologue
    .line 1207
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1206
    check-cast v0, Lsun/security/x509/PolicyConstraintsExtension;

    return-object v0
.end method

.method public getPolicyMappingsExtension()Lsun/security/x509/PolicyMappingsExtension;
    .registers 2

    .prologue
    .line 1217
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1216
    check-cast v0, Lsun/security/x509/PolicyMappingsExtension;

    return-object v0
.end method

.method public getPrivateKeyUsageExtension()Lsun/security/x509/PrivateKeyUsageExtension;
    .registers 2

    .prologue
    .line 1226
    sget-object v0, Lsun/security/x509/PKIXExtensions;->PrivateKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1225
    check-cast v0, Lsun/security/x509/PrivateKeyUsageExtension;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 840
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 841
    return-object v4

    .line 843
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "key.value"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 845
    .local v1, "key":Ljava/security/PublicKey;
    return-object v1

    .line 846
    .end local v1    # "key":Ljava/security/PublicKey;
    :catch_12
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 874
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSerialNumberObject()Lsun/security/x509/SerialNumber;

    move-result-object v0

    .line 876
    .local v0, "ser":Lsun/security/x509/SerialNumber;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getSerialNumberObject()Lsun/security/x509/SerialNumber;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 886
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 887
    return-object v4

    .line 889
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 890
    const-string/jumbo v3, "serialNumber.number"

    .line 889
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/SerialNumber;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 892
    .local v1, "ser":Lsun/security/x509/SerialNumber;
    return-object v1

    .line 893
    .end local v1    # "ser":Lsun/security/x509/SerialNumber;
    :catch_12
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1039
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v0, :cond_6

    .line 1040
    return-object v1

    .line 1041
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1051
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_6

    .line 1052
    return-object v2

    .line 1053
    :cond_6
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 1054
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSigAlgParams()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1065
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v1, :cond_6

    .line 1066
    return-object v2

    .line 1068
    :cond_6
    :try_start_6
    iget-object v1, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v1}, Lsun/security/x509/AlgorithmId;->getEncodedParams()[B
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 1069
    :catch_d
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/io/IOException;
    return-object v2
.end method

.method public getSignature()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1026
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-nez v0, :cond_6

    .line 1027
    return-object v1

    .line 1028
    :cond_6
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    .registers 2

    .prologue
    .line 1237
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1236
    check-cast v0, Lsun/security/x509/SubjectAlternativeNameExtension;

    return-object v0
.end method

.method public declared-synchronized getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 1651
    :try_start_2
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_12

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    if-eqz v3, :cond_12

    .line 1652
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    invoke-static {v3}, Lsun/security/x509/X509CertImpl;->cloneAltNames(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_32

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 1655
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectAlternativeNameExtension()Lsun/security/x509/SubjectAlternativeNameExtension;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_32

    move-result-object v2

    .line 1656
    .local v2, "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    if-nez v2, :cond_1a

    monitor-exit p0

    .line 1657
    return-object v4

    .line 1662
    :cond_1a
    :try_start_1a
    const-string/jumbo v3, "subject_name"

    .line 1661
    invoke-virtual {v2, v3}, Lsun/security/x509/SubjectAlternativeNameExtension;->get(Ljava/lang/String;)Lsun/security/x509/GeneralNames;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_2b
    .catchall {:try_start_1a .. :try_end_20} :catchall_32

    move-result-object v1

    .line 1667
    .local v1, "names":Lsun/security/x509/GeneralNames;
    :try_start_21
    invoke-static {v1}, Lsun/security/x509/X509CertImpl;->makeAltNames(Lsun/security/x509/GeneralNames;)Ljava/util/Collection;

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;

    .line 1668
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->subjectAlternativeNames:Ljava/util/Collection;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_32

    monitor-exit p0

    return-object v3

    .line 1663
    .end local v1    # "names":Lsun/security/x509/GeneralNames;
    :catch_2b
    move-exception v0

    .line 1665
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_2c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_32

    move-result-object v3

    monitor-exit p0

    return-object v3

    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v2    # "subjectAltNameExt":Lsun/security/x509/SubjectAlternativeNameExtension;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 905
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 906
    return-object v4

    .line 908
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "subject.dname"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 910
    .local v1, "subject":Ljava/security/Principal;
    return-object v1

    .line 911
    .end local v1    # "subject":Ljava/security/Principal;
    :catch_12
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectKeyId()Lsun/security/x509/KeyIdentifier;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1130
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v1

    .line 1131
    .local v1, "ski":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v1, :cond_10

    .line 1134
    :try_start_7
    const-string/jumbo v2, "key_id"

    .line 1133
    invoke-virtual {v1, v2}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    .line 1135
    :catch_f
    move-exception v0

    .line 1137
    :cond_10
    return-object v3
.end method

.method public getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;
    .registers 2

    .prologue
    .line 1247
    sget-object v0, Lsun/security/x509/PKIXExtensions;->SubjectKey_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Lsun/security/x509/X509CertImpl;->getExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;

    move-result-object v0

    .line 1246
    check-cast v0, Lsun/security/x509/SubjectKeyIdentifierExtension;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1100
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 1101
    return-object v4

    .line 1103
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1104
    const-string/jumbo v3, "subjectID"

    .line 1103
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/UniqueIdentity;

    .line 1105
    .local v1, "id":Lsun/security/x509/UniqueIdentity;
    if-nez v1, :cond_14

    .line 1106
    return-object v4

    .line 1108
    :cond_14
    invoke-virtual {v1}, Lsun/security/x509/UniqueIdentity;->getId()[Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-result-object v2

    return-object v2

    .line 1109
    .end local v1    # "id":Lsun/security/x509/UniqueIdentity;
    :catch_19
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 922
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 923
    return-object v4

    .line 926
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 927
    const-string/jumbo v3, "subject.x500principal"

    .line 926
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 929
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    return-object v1

    .line 930
    .end local v1    # "subject":Ljavax/security/auth/x500/X500Principal;
    :catch_12
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    return-object v4
.end method

.method public getTBSCertificate()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v0, :cond_b

    .line 1015
    iget-object v0, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v0}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    return-object v0

    .line 1017
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "Uninitialized certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnparseableExtension(Lsun/security/util/ObjectIdentifier;)Lsun/security/x509/Extension;
    .registers 8
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v5, 0x0

    .line 1379
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_6

    .line 1380
    return-object v5

    .line 1385
    :cond_6
    :try_start_6
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v4, "extensions"

    invoke-virtual {v3, v4}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;
    :try_end_11
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_25

    .line 1389
    .local v1, "extensions":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_16

    .line 1390
    return-object v5

    .line 1386
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_14
    move-exception v0

    .line 1387
    .local v0, "ce":Ljava/security/cert/CertificateException;
    return-object v5

    .line 1392
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :cond_16
    :try_start_16
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->getUnparseableExtensions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/Extension;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_25

    return-object v3

    .line 1394
    .end local v1    # "extensions":Lsun/security/x509/CertificateExtensions;
    :catch_25
    move-exception v2

    .line 1395
    .local v2, "ioe":Ljava/io/IOException;
    return-object v5
.end method

.method public getVersion()I
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 857
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 858
    return v4

    .line 860
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    const-string/jumbo v3, "version.number"

    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_18

    move-result v1

    .line 862
    .local v1, "vers":I
    add-int/lit8 v2, v1, 0x1

    return v2

    .line 863
    .end local v1    # "vers":I
    :catch_18
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1265
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-nez v2, :cond_6

    .line 1266
    return v4

    .line 1268
    :cond_6
    :try_start_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 1269
    const-string/jumbo v3, "extensions"

    .line 1268
    invoke-virtual {v2, v3}, Lsun/security/x509/X509CertInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/CertificateExtensions;

    .line 1270
    .local v1, "exts":Lsun/security/x509/CertificateExtensions;
    if-nez v1, :cond_14

    .line 1271
    return v4

    .line 1272
    :cond_14
    invoke-virtual {v1}, Lsun/security/x509/CertificateExtensions;->hasUnsupportedCriticalExtension()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-result v2

    return v2

    .line 1273
    .end local v1    # "exts":Lsun/security/x509/CertificateExtensions;
    :catch_19
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 715
    iget-boolean v3, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v3, :cond_e

    .line 716
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "cannot over-write existing certificate"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    :cond_e
    new-instance v0, Lsun/security/x509/X509AttributeName;

    invoke-direct {v0, p1}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "id":Ljava/lang/String;
    const-string/jumbo v3, "x509"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 722
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid root of attribute name, expected [x509], received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 725
    :cond_3a
    new-instance v1, Lsun/security/x509/X509AttributeName;

    invoke-virtual {v0}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lsun/security/x509/X509AttributeName;-><init>(Ljava/lang/String;)V

    .line 726
    .end local v0    # "attr":Lsun/security/x509/X509AttributeName;
    .local v1, "attr":Lsun/security/x509/X509AttributeName;
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 728
    const-string/jumbo v3, "info"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 729
    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    .line 730
    instance-of v3, p2, Lsun/security/x509/X509CertInfo;

    if-nez v3, :cond_63

    .line 731
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "Attribute value should be of type X509CertInfo."

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 734
    :cond_63
    check-cast p2, Lsun/security/x509/X509CertInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    .line 735
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 744
    :goto_69
    return-void

    .line 737
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6a
    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v1}, Lsun/security/x509/X509AttributeName;->getSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 738
    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    goto :goto_69

    .line 741
    :cond_76
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attribute name not recognized or set() not allowed for the same: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 569
    :try_start_0
    iget-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    if-eqz v5, :cond_18

    .line 570
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    .line 571
    const-string/jumbo v6, "cannot over-write existing certificate"

    .line 570
    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_d

    .line 603
    :catch_d
    move-exception v0

    .line 604
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 572
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    const/4 v3, 0x0

    .line 573
    .local v3, "sigEngine":Ljava/security/Signature;
    if-eqz p3, :cond_21

    :try_start_1b
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_69

    .line 574
    :cond_21
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 578
    .local v3, "sigEngine":Ljava/security/Signature;
    :goto_25
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 581
    invoke-virtual {v3}, Ljava/security/Signature;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    .line 583
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 584
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v4, Lsun/security/util/DerOutputStream;

    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 587
    .local v4, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v5, v4}, Lsun/security/x509/X509CertInfo;->encode(Ljava/io/OutputStream;)V

    .line 588
    invoke-virtual {v4}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    .line 591
    .local v2, "rawCert":[B
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v5, v4}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 594
    array-length v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Ljava/security/Signature;->update([BII)V

    .line 595
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    .line 596
    iget-object v5, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v4, v5}, Lsun/security/util/DerOutputStream;->putBitString([B)V

    .line 599
    const/16 v5, 0x30

    invoke-virtual {v1, v5, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 600
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    .line 601
    const/4 v5, 0x1

    iput-boolean v5, p0, Lsun/security/x509/X509CertImpl;->readOnly:Z

    .line 606
    return-void

    .line 576
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "rawCert":[B
    .end local v4    # "tmp":Lsun/security/util/DerOutputStream;
    .local v3, "sigEngine":Ljava/security/Signature;
    :cond_69
    invoke-static {p2, p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6c} :catch_d

    move-result-object v3

    .local v3, "sigEngine":Ljava/security/Signature;
    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 816
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    if-nez v2, :cond_c

    .line 817
    :cond_8
    const-string/jumbo v2, ""

    return-object v2

    .line 816
    :cond_c
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    if-eqz v2, :cond_8

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const-string/jumbo v2, "  Algorithm: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 826
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    const-string/jumbo v2, "  Signature:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v0, v3}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string/jumbo v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 409
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 431
    if-nez p2, :cond_6

    .line 432
    :try_start_3
    const-string/jumbo p2, ""

    .line 434
    :cond_6
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 437
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 438
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_29

    if-eqz v2, :cond_20

    monitor-exit p0

    .line 439
    return-void

    .line 441
    :cond_20
    :try_start_20
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2

    .line 445
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v2, :cond_39

    .line 446
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "Uninitialized certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_39
    const/4 v1, 0x0

    .line 450
    .local v1, "sigVerf":Ljava/security/Signature;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_71

    .line 451
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 455
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_4a
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 457
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 458
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 461
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 462
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 463
    iput-object p2, p0, Lsun/security/x509/X509CertImpl;->verifiedProvider:Ljava/lang/String;

    .line 465
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    if-nez v2, :cond_7c

    .line 466
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_71
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_7a
    .catchall {:try_start_2c .. :try_end_7a} :catchall_29

    move-result-object v1

    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_4a

    .restart local v0    # "rawCert":[B
    :cond_7c
    monitor-exit p0

    .line 468
    return-void
.end method

.method public declared-synchronized verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .registers 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 490
    :try_start_1
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signedCert:[B

    if-nez v2, :cond_11

    .line 491
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v3, "Uninitialized certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 494
    :cond_11
    const/4 v1, 0x0

    .line 495
    .local v1, "sigVerf":Ljava/security/Signature;
    if-nez p2, :cond_43

    .line 496
    :try_start_14
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 500
    .local v1, "sigVerf":Ljava/security/Signature;
    :goto_1e
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 502
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->info:Lsun/security/x509/X509CertInfo;

    invoke-virtual {v2}, Lsun/security/x509/X509CertInfo;->getEncodedInfo()[B

    move-result-object v0

    .line 503
    .local v0, "rawCert":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/Signature;->update([BII)V

    .line 506
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->signature:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    .line 507
    iput-object p1, p0, Lsun/security/x509/X509CertImpl;->verifiedPublicKey:Ljava/security/PublicKey;

    .line 509
    iget-boolean v2, p0, Lsun/security/x509/X509CertImpl;->verificationResult:Z

    if-nez v2, :cond_4e

    .line 510
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v3, "Signature does not match."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    .end local v0    # "rawCert":[B
    .local v1, "sigVerf":Ljava/security/Signature;
    :cond_43
    iget-object v2, p0, Lsun/security/x509/X509CertImpl;->algId:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    :try_end_4c
    .catchall {:try_start_14 .. :try_end_4c} :catchall_e

    move-result-object v1

    .local v1, "sigVerf":Ljava/security/Signature;
    goto :goto_1e

    .restart local v0    # "rawCert":[B
    :cond_4e
    monitor-exit p0

    .line 512
    return-void
.end method
