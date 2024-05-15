.class public Lcom/android/org/conscrypt/TrustedCertificateStore;
.super Ljava/lang/Object;
.source "TrustedCertificateStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;,
        Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;
    }
.end annotation


# static fields
.field private static final CERT_FACTORY:Ljava/security/cert/CertificateFactory;

.field private static final PREFIX_SYSTEM:Ljava/lang/String; = "system:"

.field private static final PREFIX_USER:Ljava/lang/String; = "user:"


# instance fields
.field private final addedDir:Ljava/io/File;

.field private final deletedDir:Ljava/io/File;

.field private final systemDir:Ljava/io/File;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p0, "-this"    # Lcom/android/org/conscrypt/TrustedCertificateStore;
    .param p1, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 114
    :try_start_0
    const-string/jumbo v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    sput-object v1, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;
    :try_end_9
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_9} :catch_a

    .line 86
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

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 130
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->-get2()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->-get0()Ljava/io/File;

    move-result-object v1

    .line 131
    invoke-static {}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->-get1()Ljava/io/File;

    move-result-object v2

    .line 130
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "addedDir"    # Ljava/io/File;
    .param p3, "deletedDir"    # Ljava/io/File;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    .line 136
    iput-object p2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    .line 137
    iput-object p3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    .line 138
    return-void
.end method

.method private addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .registers 10
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_7

    .line 255
    return-void

    .line 257
    :cond_7
    const/4 v3, 0x0

    array-length v4, v2

    :goto_9
    if-ge v3, v4, :cond_2a

    aget-object v1, v2, v3

    .line 258
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 260
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 263
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method private containsAlias(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    .registers 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 456
    if-nez p0, :cond_4

    .line 457
    return-object v1

    .line 460
    :cond_4
    instance-of v1, p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_b

    .line 461
    check-cast p0, Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .end local p0    # "cert":Ljava/security/cert/X509Certificate;
    return-object p0

    .line 465
    .restart local p0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 466
    :catch_14
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;
    .registers 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 563
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private fileForAlias(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 161
    if-nez p1, :cond_c

    .line 162
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_c
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-string/jumbo v2, "system:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v0, "file":Ljava/io/File;
    :goto_24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 174
    :cond_30
    return-object v3

    .line 167
    .end local v0    # "file":Ljava/io/File;
    :cond_31
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-string/jumbo v2, "user:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_24

    .line 170
    .end local v0    # "file":Ljava/io/File;
    :cond_4a
    return-object v3

    .line 176
    .restart local v0    # "file":Ljava/io/File;
    :cond_4b
    return-object v0
.end method

.method private findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 12
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
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p4, "desiredReturnType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "hash":Ljava/lang/String;
    const/4 v4, 0x0

    .line 513
    .end local v1    # "certs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    .local v4, "index":I
    :goto_7
    invoke-direct {p0, p1, v3, v4}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 514
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_23

    .line 516
    const-class v5, Ljava/lang/Boolean;

    if-ne p4, v5, :cond_18

    .line 517
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v5

    .line 519
    :cond_18
    const-class v5, Ljava/io/File;

    if-ne p4, v5, :cond_1d

    .line 523
    return-object v2

    .line 525
    :cond_1d
    const-class v5, Ljava/util/Set;

    if-ne p4, v5, :cond_22

    .line 526
    return-object v1

    .line 528
    :cond_22
    return-object v6

    .line 530
    :cond_23
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 512
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 533
    :cond_2c
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 534
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_29

    .line 538
    invoke-interface {p3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 539
    const-class v5, Ljava/security/cert/X509Certificate;

    if-ne p4, v5, :cond_3d

    .line 540
    return-object v0

    .line 541
    :cond_3d
    const-class v5, Ljava/lang/Boolean;

    if-ne p4, v5, :cond_44

    .line 542
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v5

    .line 543
    :cond_44
    const-class v5, Ljava/io/File;

    if-ne p4, v5, :cond_49

    .line 544
    return-object v2

    .line 545
    :cond_49
    const-class v5, Ljava/util/Set;

    if-ne p4, v5, :cond_58

    .line 546
    if-nez v1, :cond_54

    .line 547
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 549
    :cond_54
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 551
    :cond_58
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private hash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 558
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    .line 559
    .local v0, "hash":I
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Hex;->intToHexString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z
    .registers 5
    .param p0, "cert"    # Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v0

    .line 447
    .local v0, "ctx":J
    invoke-static {v0, v1, v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_check_issued(JJ)I

    move-result v3

    if-nez v3, :cond_c

    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method public static final isSystem(Ljava/lang/String;)Z
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, "system:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isTombstone(Ljava/io/File;)Z
    .registers 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final isUser(Ljava/lang/String;)Z
    .registers 2
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "user:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_8

    .line 185
    return-object v5

    .line 187
    :cond_8
    const/4 v2, 0x0

    .line 189
    .local v2, "is":Ljava/io/InputStream;
    :try_start_9
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_24
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_13} :catch_1f
    .catchall {:try_start_9 .. :try_end_13} :catchall_29

    .line 190
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_13
    sget-object v4, Lcom/android/org/conscrypt/TrustedCertificateStore;->CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_31
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_1b} :catch_34
    .catchall {:try_start_13 .. :try_end_1b} :catchall_2e

    .line 198
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 190
    return-object v4

    .line 193
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_1f
    move-exception v1

    .line 198
    .end local v2    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/security/cert/CertificateException;
    :goto_20
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 196
    return-object v5

    .line 191
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_24
    move-exception v0

    .line 198
    .end local v2    # "is":Ljava/io/InputStream;
    .local v0, "e":Ljava/io/IOException;
    :goto_25
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    return-object v5

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_29
    move-exception v4

    .line 198
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_2a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 197
    throw v4

    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_2e
    move-exception v4

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    goto :goto_2a

    .line 191
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_31
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_25

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_34
    move-exception v1

    .restart local v1    # "e":Ljava/security/cert/CertificateException;
    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_20
.end method

.method private removeUnnecessaryTombstones(Ljava/lang/String;)V
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 642
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 644
    :cond_c
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 645
    .local v0, "dotIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1b

    .line 646
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 649
    :cond_1b
    const-string/jumbo v4, "user:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, "hash":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 652
    .local v3, "lastTombstoneIndex":I
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v2, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 653
    return-void

    .line 663
    .local v1, "file":Ljava/io/File;
    :cond_3f
    add-int/lit8 v3, v3, -0x1

    .line 655
    .end local v1    # "file":Ljava/io/File;
    :cond_41
    if-ltz v3, :cond_4f

    .line 656
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->file(Ljava/io/File;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 657
    .restart local v1    # "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 665
    .end local v1    # "file":Ljava/io/File;
    :cond_4f
    return-void

    .line 660
    .restart local v1    # "file":Ljava/io/File;
    :cond_50
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 661
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static setDefaultUserDirectory(Ljava/io/File;)V
    .registers 3
    .param p0, "root"    # Ljava/io/File;

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "cacerts-added"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->-set0(Ljava/io/File;)Ljava/io/File;

    .line 122
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "cacerts-removed"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore$PreloadHolder;->-set1(Ljava/io/File;)Ljava/io/File;

    .line 123
    return-void
.end method

.method private writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 205
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 206
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 207
    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 208
    const/4 v1, 0x0

    .line 210
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_23

    .line 211
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_15
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    .end local v1    # "os":Ljava/io/OutputStream;
    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_28

    .line 213
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 215
    invoke-virtual {p1, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 216
    return-void

    .line 212
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v1    # "os":Ljava/io/OutputStream;
    :catchall_23
    move-exception v3

    .line 213
    .end local v1    # "os":Ljava/io/OutputStream;
    :goto_24
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 212
    throw v3

    .restart local v2    # "os":Ljava/io/OutputStream;
    :catchall_28
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    goto :goto_24
.end method


# virtual methods
.method public aliases()Ljava/util/Set;
    .registers 4
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
    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 241
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "user:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 242
    const-string/jumbo v1, "system:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 243
    return-object v0
.end method

.method public allSystemAliases()Ljava/util/Set;
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
    .line 266
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 267
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_e

    .line 269
    return-object v3

    .line 271
    :cond_e
    const/4 v4, 0x0

    array-length v5, v2

    :goto_10
    if-ge v4, v5, :cond_35

    aget-object v1, v2, v4

    .line 272
    .local v1, "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "system:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "alias":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 274
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 277
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    :cond_35
    return-object v3
.end method

.method public containsAlias(Ljava/lang/String;)Z
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteCertificateEntry(Ljava/lang/String;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 608
    if-nez p1, :cond_3

    .line 609
    return-void

    .line 611
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 612
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_a

    .line 613
    return-void

    .line 615
    :cond_a
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 616
    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 617
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_17

    .line 619
    return-void

    .line 621
    :cond_17
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v3, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 622
    .local v1, "deleted":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 624
    return-void

    .line 627
    :cond_24
    invoke-direct {p0, v1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    .line 628
    return-void

    .line 630
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "deleted":Ljava/io/File;
    :cond_28
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 633
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 634
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->removeUnnecessaryTombstones(Ljava/lang/String;)V

    .line 635
    return-void

    .line 638
    :cond_3a
    return-void
.end method

.method public findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 9
    .param p1, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "issuers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore$4;

    invoke-direct {v2, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$4;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 415
    .local v2, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 416
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-class v6, Ljava/util/Set;

    invoke-direct {p0, v5, v0, v2, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 417
    .local v4, "userAddedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-eqz v4, :cond_17

    .line 418
    move-object v1, v4

    .line 420
    .end local v1    # "issuers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_17
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore$5;

    .end local v2    # "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-direct {v2, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$5;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 434
    .restart local v2    # "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    iget-object v5, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-class v6, Ljava/util/Set;

    invoke-direct {p0, v5, v0, v2, v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 435
    .local v3, "systemCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    if-eqz v3, :cond_2d

    .line 436
    if-eqz v1, :cond_30

    .line 437
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 442
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_32

    :goto_2f
    return-object v1

    .line 439
    :cond_30
    move-object v1, v3

    .local v1, "issuers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2d

    .line 442
    .end local v1    # "issuers":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_2f
.end method

.method public findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v6, 0x0

    .line 379
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore$3;

    invoke-direct {v1, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$3;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 390
    .local v1, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 391
    .local v0, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 392
    .local v3, "user":Ljava/security/cert/X509Certificate;
    if-eqz v3, :cond_17

    .line 393
    return-object v3

    .line 395
    :cond_17
    iget-object v4, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    const-class v5, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v4, v0, v1, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 396
    .local v2, "system":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_2c

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2c

    .line 397
    return-object v2

    .line 399
    :cond_2c
    return-object v6
.end method

.method public getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .registers 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 147
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_13

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isTombstone(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 148
    :cond_13
    return-object v3

    .line 150
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->readCertificate(Ljava/io/File;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 151
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2a

    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSystem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 152
    xor-int/lit8 v2, p2, 0x1

    .line 151
    if-eqz v2, :cond_2b

    .line 153
    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    .line 151
    if-eqz v2, :cond_2b

    .line 155
    :cond_2a
    return-object v3

    .line 157
    :cond_2b
    return-object v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .param p1, "c"    # Ljava/security/cert/Certificate;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .registers 8
    .param p1, "c"    # Ljava/security/cert/Certificate;
    .param p2, "includeDeletedSystem"    # Z

    .prologue
    const/4 v4, 0x0

    .line 293
    if-eqz p1, :cond_9

    instance-of v3, p1, Ljava/security/cert/X509Certificate;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    .line 294
    :cond_9
    return-object v4

    :cond_a
    move-object v2, p1

    .line 296
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 297
    .local v2, "x":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 298
    .local v1, "user":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 301
    :cond_32
    if-nez p2, :cond_3b

    invoke-direct {p0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 302
    return-object v4

    .line 304
    :cond_3b
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p0, v3, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    .line 305
    .local v0, "system":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 308
    :cond_60
    return-object v4
.end method

.method public getCertificateChain(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 5
    .param p1, "leaf"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 484
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 485
    .local v1, "chain":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    invoke-static {p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    .line 486
    .local v0, "cert":Lcom/android/org/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 489
    :goto_c
    invoke-static {v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isSelfIssuedCertificate(Lcom/android/org/conscrypt/OpenSSLX509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 499
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 492
    :cond_18
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->convertToOpenSSLIfNeeded(Ljava/security/cert/X509Certificate;)Lcom/android/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_12

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 496
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .registers 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "x"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 329
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$1;

    invoke-direct {v0, p0, p2}, Lcom/android/org/conscrypt/TrustedCertificateStore$1;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 335
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-class v2, Ljava/io/File;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    return-object v1
.end method

.method public getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 226
    return-object v6

    .line 228
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->fileForAlias(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 229
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_f

    .line 230
    return-object v6

    .line 232
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 233
    .local v2, "time":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1a

    .line 234
    return-object v6

    .line 236
    :cond_1a
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 9
    .param p1, "c"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v6, 0x0

    .line 349
    new-instance v0, Lcom/android/org/conscrypt/TrustedCertificateStore$2;

    invoke-direct {v0, p0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore$2;-><init>(Lcom/android/org/conscrypt/TrustedCertificateStore;Ljava/security/cert/X509Certificate;)V

    .line 355
    .local v0, "selector":Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    .line 356
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 358
    const-class v5, Ljava/security/cert/X509Certificate;

    .line 355
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 359
    .local v2, "user":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_17

    .line 360
    return-object v2

    .line 362
    :cond_17
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    .line 363
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 365
    const-class v5, Ljava/security/cert/X509Certificate;

    .line 362
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/org/conscrypt/TrustedCertificateStore;->findCert(Ljava/io/File;Ljavax/security/auth/x500/X500Principal;Lcom/android/org/conscrypt/TrustedCertificateStore$CertSelector;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 366
    .local v1, "system":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_30

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->isDeletedSystemCertificate(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    .line 367
    return-object v1

    .line 369
    :cond_30
    return-object v6
.end method

.method public installCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 8
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 573
    if-nez p1, :cond_b

    .line 574
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "cert == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 576
    :cond_b
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->systemDir:Ljava/io/File;

    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v1

    .line 577
    .local v1, "system":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 578
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->deletedDir:Ljava/io/File;

    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    .line 579
    .local v0, "deleted":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 582
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_43

    .line 583
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 585
    :cond_43
    return-void

    .line 589
    :cond_44
    return-void

    .line 591
    .end local v0    # "deleted":Ljava/io/File;
    :cond_45
    iget-object v3, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v3, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v2

    .line 592
    .local v2, "user":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 594
    return-void

    .line 597
    :cond_52
    invoke-direct {p0, v2, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->writeCertificate(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    .line 598
    return-void
.end method

.method public isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public userAliases()Ljava/util/Set;
    .registers 4
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
    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v1, "user:"

    iget-object v2, p0, Lcom/android/org/conscrypt/TrustedCertificateStore;->addedDir:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->addAliases(Ljava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 249
    return-object v0
.end method
