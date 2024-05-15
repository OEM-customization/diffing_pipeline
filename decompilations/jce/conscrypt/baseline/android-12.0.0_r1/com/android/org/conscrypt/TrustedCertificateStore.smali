.class public Lcom/android/org/conscrypt/TrustedCertificateStore;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"

# interfaces
.implements Lcom/android/org/conscrypt/ConscryptCertStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;,
        Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o CERT_FACTORY:Ljava/security/cert/CertificateFactory;

.field private static final greylist-max-o PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field private static final greylist-max-o PREFIX_USER:Ljava/lang/String; = "user:"


# instance fields
.field private final greylist-max-o addedDir:Ljava/io/File;

.field private final greylist-max-o deletedDir:Ljava/io/File;

.field private final greylist-max-o systemDir:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 114
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;
    :try_end_8
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_8} :catch_a

    .line 117
    nop

    .line 118
    return-void

    .line 115
    :catch_a
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor greylist test-api <init>()V
    .registers 4

    .line 134
    # getter for: Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsSystemDir:Ljava/io/File;
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->access$200()Ljava/io/File;

    move-result-object v0

    # getter for: Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->access$000()Ljava/io/File;

    move-result-object v1

    .line 135
    # getter for: Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->access$100()Ljava/io/File;

    move-result-object v2

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 136
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "addedDir"    # Ljava/io/File;
    .param p3, "deletedDir"    # Ljava/io/File;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    .line 140
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    .line 141
    iput-object p3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    .line 142
    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .registers 10
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 262
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_7

    .line 264
    return-void

    .line 266
    :cond_7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 267
    .local v3, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "alias":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 269
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "alias":Ljava/lang/String;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 272
    :cond_28
    return-void
.end method

.method private greylist-max-o containsAlias(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 476
    if-nez p0, :cond_4

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_4
    instance-of v0, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_c

    .line 481
    move-object v0, p0

    check-cast v0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    return-object v0

    .line 485
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    return-object v0

    .line 486
    :catch_15
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .registers 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 592
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private greylist-max-o fileForAlias(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_42

    .line 170
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-string v3, "system:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    goto :goto_32

    .line 172
    .end local v0    # "file":Ljava/io/File;
    :cond_1b
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 173
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string v3, "user:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .restart local v0    # "file":Ljava/io/File;
    :goto_32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_40

    .line 181
    :cond_3f
    return-object v0

    .line 179
    :cond_40
    :goto_40
    return-object v1

    .line 175
    .end local v0    # "file":Ljava/io/File;
    :cond_41
    return-object v1

    .line 167
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "selector"    # Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 539
    .local p4, "desiredReturnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 540
    .local v0, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "hash":Ljava/lang/String;
    const/4 v2, 0x0

    .line 542
    .local v2, "index":I
    :goto_6
    invoke-direct {p0, p1, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 543
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_23

    .line 545
    const-class v4, Ljava/lang/Boolean;

    if-ne p4, v4, :cond_17

    .line 546
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v4

    .line 548
    :cond_17
    const-class v4, Ljava/io/File;

    if-ne p4, v4, :cond_1c

    .line 552
    return-object v3

    .line 554
    :cond_1c
    const-class v4, Ljava/util/Set;

    if-ne p4, v4, :cond_21

    .line 555
    return-object v0

    .line 557
    :cond_21
    const/4 v4, 0x0

    return-object v4

    .line 559
    :cond_23
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 560
    goto :goto_5e

    .line 562
    :cond_2a
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 563
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-nez v4, :cond_31

    .line 565
    goto :goto_5e

    .line 567
    :cond_31
    invoke-interface {p3, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 568
    const-class v5, Ljava/security/cert/X509Certificate;

    if-ne p4, v5, :cond_3c

    .line 569
    return-object v4

    .line 570
    :cond_3c
    const-class v5, Ljava/lang/Boolean;

    if-ne p4, v5, :cond_43

    .line 571
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v5

    .line 572
    :cond_43
    const-class v5, Ljava/io/File;

    if-ne p4, v5, :cond_48

    .line 573
    return-object v3

    .line 574
    :cond_48
    const-class v5, Ljava/util/Set;

    if-ne p4, v5, :cond_58

    .line 575
    if-nez v0, :cond_54

    .line 576
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, v5

    .line 578
    :cond_54
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 580
    :cond_58
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 541
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private blacklist findCertSet(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;)Ljava/util/Set;
    .registers 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p3, "selector"    # Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 533
    const-class v0, Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private greylist-max-o hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .line 587
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 588
    .local v0, "hash":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Hex;->intToHexString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "x"    # Ljava/security/cert/X509Certificate;

    .line 224
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z
    .registers 9
    .param p0, "cert"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .line 466
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    .line 467
    .local v6, "ctx":J
    move-wide v0, v6

    move-object v2, p0

    move-wide v3, v6

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->X509_check_issued(JLcom/android/org/conscrypt/OpenSSLX509Certificate;JLcom/android/org/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final greylist-max-o isSystem(Ljava/lang/String;)Z
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 91
    const-string v0, "system:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isTombstone(Ljava/io/File;)Z
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static final greylist-max-o test-api isUser(Ljava/lang/String;)Z
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .line 95
    const-string v0, "user:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 190
    return-object v1

    .line 192
    :cond_8
    const/4 v0, 0x0

    .line 194
    .local v0, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 195
    sget-object v2, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1c} :catch_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_1c} :catch_25
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 203
    invoke-static {v0}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    return-object v2

    .line 203
    :catchall_20
    move-exception v1

    invoke-static {v0}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    throw v1

    .line 198
    :catch_25
    move-exception v2

    .line 201
    .local v2, "e":Ljava/security/cert/CertificateException;
    nop

    .line 203
    invoke-static {v0}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    return-object v1

    .line 196
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_2b
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 203
    invoke-static {v0}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 197
    return-object v1
.end method

.method private greylist-max-o removeUnnecessaryTombstones(Ljava/lang/String;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 675
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 676
    .local v0, "dotIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_63

    .line 680
    const-string v1, "user:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "hash":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 683
    .local v2, "lastTombstoneIndex":I
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 684
    return-void

    .line 686
    :cond_32
    :goto_32
    if-ltz v2, :cond_62

    .line 687
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 688
    .local v3, "file":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 689
    goto :goto_62

    .line 691
    :cond_41
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 694
    nop

    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, -0x1

    .line 695
    goto :goto_32

    .line 692
    .restart local v3    # "file":Ljava/io/File;
    :cond_4b
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 696
    .end local v3    # "file":Ljava/io/File;
    :cond_62
    :goto_62
    return-void

    .line 677
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "lastTombstoneIndex":I
    :cond_63
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 673
    .end local v0    # "dotIndex":I
    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static greylist-max-o test-api setDefaultUserDirectory(Ljava/io/File;)V
    .registers 3
    .param p0, "root"    # Ljava/io/File;

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "cacerts-added"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsAddedDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->access$002(Ljava/io/File;)Ljava/io/File;

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "cacerts-removed"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # setter for: Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->defaultCaCertsDeletedDir:Ljava/io/File;
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->access$102(Ljava/io/File;)Ljava/io/File;

    .line 124
    return-void
.end method

.method private greylist-max-o writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 211
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_10
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 216
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_25

    .line 218
    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 219
    nop

    .line 220
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 221
    return-void

    .line 218
    :catchall_25
    move-exception v1

    invoke-static {v3}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 219
    throw v1
.end method


# virtual methods
.method public greylist-max-o test-api aliases()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 249
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string v2, "user:"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 250
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-string v2, "system:"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 251
    return-object v0
.end method

.method public greylist-max-o test-api allSystemAliases()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "files":[Ljava/lang/String;
    if-nez v1, :cond_e

    .line 279
    return-object v0

    .line 281
    :cond_e
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    .line 282
    .local v4, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "system:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "alias":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 284
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "alias":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 287
    :cond_32
    return-object v0
.end method

.method public greylist-max-o test-api containsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o test-api deleteCertificateEntry(Ljava/lang/String;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 639
    if-nez p1, :cond_3

    .line 640
    return-void

    .line 642
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 643
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_a

    .line 644
    return-void

    .line 646
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 647
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 648
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_17

    .line 650
    return-void

    .line 652
    :cond_17
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v2

    .line 653
    .local v2, "deleted":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 655
    return-void

    .line 658
    :cond_24
    invoke-direct {p0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    .line 659
    return-void

    .line 661
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "deleted":Ljava/io/File;
    :cond_28
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 664
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 665
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->removeUnnecessaryTombstones(Ljava/lang/String;)V

    .line 666
    return-void

    .line 669
    :cond_3a
    return-void
.end method

.method public greylist-max-o test-api findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 8
    .param p1, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "issuers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore$4;

    invoke-direct {v1, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$4;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 435
    .local v1, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 436
    .local v2, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v3, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCertSet(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;)Ljava/util/Set;

    move-result-object v3

    .line 437
    .local v3, "userAddedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-eqz v3, :cond_13

    .line 438
    move-object v0, v3

    .line 440
    :cond_13
    new-instance v4, Lcom/android/org/conscrypt/TrustedCertificateStore$5;

    invoke-direct {v4, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$5;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    move-object v1, v4

    .line 454
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v4, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCertSet(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;)Ljava/util/Set;

    move-result-object v4

    .line 455
    .local v4, "systemCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_28

    .line 456
    if-eqz v0, :cond_27

    .line 457
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_28

    .line 459
    :cond_27
    move-object v0, v4

    .line 462
    :cond_28
    :goto_28
    if-eqz v0, :cond_2c

    move-object v5, v0

    goto :goto_30

    :cond_2c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    :goto_30
    return-object v5
.end method

.method public greylist-max-o test-api findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .line 397
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$3;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$3;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 408
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 409
    .local v1, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-class v3, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 410
    .local v2, "user":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_16

    .line 411
    return-object v2

    .line 413
    :cond_16
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-class v4, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v3, v1, v0, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 414
    .local v3, "system":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_29

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 415
    return-object v3

    .line 417
    :cond_29
    const/4 v4, 0x0

    return-object v4
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .line 151
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 152
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_2b

    .line 155
    :cond_14
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 156
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_2a

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    if-nez p2, :cond_29

    .line 158
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2a

    .line 162
    :cond_29
    return-object v2

    .line 160
    :cond_2a
    :goto_2a
    return-object v1

    .line 153
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .registers 8
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    .line 306
    const/4 v0, 0x0

    if-eqz p1, :cond_59

    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_8

    goto :goto_59

    .line 309
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 310
    .local v1, "x":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v2

    .line 311
    .local v2, "user":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 314
    :cond_2d
    if-nez p2, :cond_36

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 315
    return-object v0

    .line 317
    :cond_36
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p0, v3, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v3

    .line 318
    .local v3, "system":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_58
    return-object v0

    .line 307
    .end local v1    # "x":Ljava/security/cert/X509Certificate;
    .end local v2    # "user":Ljava/io/File;
    .end local v3    # "system":Ljava/io/File;
    :cond_59
    :goto_59
    return-object v0
.end method

.method public greylist test-api getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 5
    .param p1, "leaf"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 508
    .local v0, "chain":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/org/conscrypt/OpenSSLX509Certificate;>;"
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v1

    .line 509
    .local v1, "cert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 512
    :goto_c
    invoke-static {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 513
    goto :goto_28

    .line 515
    :cond_13
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 517
    goto :goto_28

    .line 519
    :cond_24
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 522
    :cond_28
    :goto_28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public greylist-max-o test-api getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .registers 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    .line 344
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;

    invoke-direct {v0, p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore$1;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 350
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-class v2, Ljava/io/File;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    return-object v1
.end method

.method public greylist-max-o test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 233
    return-object v1

    .line 235
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_f

    .line 237
    return-object v1

    .line 239
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 240
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1a

    .line 241
    return-object v1

    .line 243
    :cond_1a
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public greylist-max-o test-api getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 7
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .line 366
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$2;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 372
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    .line 373
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const-class v3, Ljava/security/cert/X509Certificate;

    .line 372
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 376
    .local v1, "user":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_16

    .line 377
    return-object v1

    .line 379
    :cond_16
    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    .line 380
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    const-class v4, Ljava/security/cert/X509Certificate;

    .line 379
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 383
    .local v2, "system":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_2d

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 384
    return-object v2

    .line 386
    :cond_2d
    const/4 v3, 0x0

    return-object v3
.end method

.method public greylist-max-o test-api installCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 603
    if-eqz p1, :cond_4a

    .line 606
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    .line 607
    .local v0, "system":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 608
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 609
    .local v1, "deleted":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 612
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 615
    return-void

    .line 613
    :cond_21
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 619
    :cond_38
    return-void

    .line 621
    .end local v1    # "deleted":Ljava/io/File;
    :cond_39
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 622
    .local v1, "user":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 624
    return-void

    .line 627
    :cond_46
    invoke-direct {p0, v1, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    .line 628
    return-void

    .line 604
    .end local v0    # "system":Ljava/io/File;
    .end local v1    # "user":Ljava/io/File;
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o test-api isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 330
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o test-api userAliases()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string v2, "user:"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 258
    return-object v0
.end method
