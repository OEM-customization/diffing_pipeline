.class public Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;,
        Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    }
.end annotation


# static fields
.field private static final greylist-max-o PKCS7_MARKER:[B

.field private static final greylist-max-o PUSHBACK_SIZE:I = 0x40


# instance fields
.field private greylist-max-o certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lcom/android/org/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser<",
            "Lcom/android/org/conscrypt/OpenSSLX509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-void

    :array_a
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 223
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$1;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    .line 250
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;

    invoke-direct {v0, p0}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$2;-><init>(Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    .line 277
    return-void
.end method

.method static synthetic blacklist access$000()[B
    .registers 1

    .line 42
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;
    :try_end_8
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 302
    :catch_9
    move-exception v0

    .line 303
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 309
    if-nez p1, :cond_7

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 314
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0
    :try_end_d
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v0

    .line 315
    :catch_e
    move-exception v0

    .line 316
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 327
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 333
    invoke-static {p1, p2}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 339
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 341
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 343
    .local v2, "c":Ljava/security/cert/Certificate;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_23

    .line 347
    move-object v3, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v2    # "c":Ljava/security/cert/Certificate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 344
    .restart local v2    # "c":Ljava/security/cert/Certificate;
    :cond_23
    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate not X.509 type at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    .end local v1    # "i":I
    .end local v2    # "c":Ljava/security/cert/Certificate;
    :cond_3a
    new-instance v1, Lcom/android/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v1, v0}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;
    :try_end_8
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 283
    :catch_9
    move-exception v0

    .line 284
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;

    invoke-virtual {v0, p1}, Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItems(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 293
    :catch_7
    move-exception v0

    .line 294
    .local v0, "e":Lcom/android/org/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-static {}, Lcom/android/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method